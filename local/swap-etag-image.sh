#!/usr/bin/env bash
#
# Regenerate the debug image served by the nginx asset-server so its content
# (and therefore its nginx ETag) changes on every run.
#
# nginx derives the ETag for a static file from "<last-modified>-<size>", so
# writing fresh bytes guarantees a new ETag. Use this to exercise the client:
#   - request when content is unchanged -> 304 Not Modified (cache revalidated)
#   - request after running this script -> 200 OK (cache replaced)
#
# Usage:
#   ./local/swap-etag-image.sh            # random color
#
# Monitor the result with:
#   docker compose -f local/compose.yml logs -f asset-server

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
output="${script_dir}/assets/images/etag-debug.png"

python3 - "$output" <<'PY'
import random
import struct
import sys
import zlib

output = sys.argv[1]

# Fill the image with a random color so each run produces visibly different
# content (and therefore a different nginx ETag).
red = random.randrange(256)
green = random.randrange(256)
blue = random.randrange(256)

width = height = 256

# Build raw RGB scanlines, each prefixed with filter byte 0.
row = bytes([red, green, blue]) * width
raw = b"".join(b"\x00" + row for _ in range(height))


def chunk(tag, data):
    body = tag + data
    return struct.pack(">I", len(data)) + body + struct.pack(">I", zlib.crc32(body) & 0xFFFFFFFF)


png = b"\x89PNG\r\n\x1a\n"
png += chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0))
png += chunk(b"IDAT", zlib.compress(raw, 9))
png += chunk(b"IEND", b"")

with open(output, "wb") as file:
    file.write(png)

print(f"Wrote {output} with color rgb({red}, {green}, {blue})")
PY

echo "ETag now:"
curl -sI "http://localhost:8081/images/etag-debug.png" | grep -i etag || true
