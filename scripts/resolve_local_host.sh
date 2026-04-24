#!/usr/bin/env bash
# Writes the Mac's en0 IP to .dart_define/local.env for --dart-define-from-file.
mkdir -p .dart_define
echo "LOCAL_HOST=$(ipconfig getifaddr en0)" > .dart_define/local.env
