# Local nginx asset server

A small `nginx:alpine` container that serves the files under `local/assets/` for
manual operation checks (ETag / HTTP cache behavior, WebView pages, etc.).

- URL base: `http://localhost:8081`
- iOS simulator: use `localhost` directly.
- Android emulator: use `http://10.0.2.2:8081` (the host alias).

## Start / stop

```bash
docker compose -f local/compose.yml up -d     # start
docker compose -f local/compose.yml ps         # status
docker compose -f local/compose.yml down       # stop
```

## ETag operation check

nginx serves static files with an `ETag` derived from `<mtime>-<size>` and
answers conditional requests automatically:

- request with no / non-matching `If-None-Match` → `200 OK` (full body)
- request with a matching `If-None-Match` → `304 Not Modified` (empty body)

### Swap the debug image to change its ETag

```bash
./local/swap-etag-image.sh    # random color, new ETag
```

Each run rewrites `local/assets/images/etag-debug.png`, so its size/mtime — and
therefore its ETag — change. The next fetch then returns `200` with new bytes;
repeated fetches without a swap return `304`.

## Monitor 200 vs 304 in the nginx access log

nginx (alpine) writes its access log to the container's stdout, so
`docker compose logs` is the network monitor. Each line ends with the HTTP
status code:

```
192.168.65.1 - - [03/Jun/2026:12:07:03 +0000] "GET /images/etag-debug.png HTTP/1.1" 200 564 ...
192.168.65.1 - - [03/Jun/2026:12:07:03 +0000] "GET /images/etag-debug.png HTTP/1.1" 304 0   ...
```

- `200 564` → body sent (first download, or after a swap)
- `304 0` → revalidated, cached bytes reused (no body)

### Commands

```bash
# Follow every request live
docker compose -f local/compose.yml logs -f asset-server

# Follow only the debug image
docker compose -f local/compose.yml logs -f asset-server | grep --line-buffered etag-debug.png

# Follow only the status code + path (trim the noise)
docker compose -f local/compose.yml logs -f asset-server \
  | grep --line-buffered -oE '"GET [^"]+" [0-9]{3}'
```

### Verify quickly with curl

```bash
# 1) full response — note the ETag value
curl -sI http://localhost:8081/images/etag-debug.png | grep -i etag

# 2) conditional request with that ETag → expect 304
curl -s -o /dev/null -w "%{http_code}\n" \
  -H 'If-None-Match: "<paste-etag-here>"' \
  http://localhost:8081/images/etag-debug.png
```

## End-to-end check with the app

1. Open the revalidating-image screen and tap the button → initial fetch
   downloads the image (`200` in the log).
2. Run `./local/swap-etag-image.sh` to change the server content/ETag.
3. Tap the button again → the cache revalidates, the ETag no longer matches, so
   the server returns `200` with the new bytes and the displayed image changes.
4. Tap again without swapping → `304`, the image stays the same.
