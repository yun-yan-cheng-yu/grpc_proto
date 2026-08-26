#!/usr/bin/env bash
# Regenerate Go gRPC stubs into ../grpc/pb/math (three projects are siblings).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
GO_OUT="$ROOT/../grpc/pb/math"

mkdir -p "$GO_OUT"
PROTO_FILES=(math.proto streamtest.proto types.proto)
protoc -I "$ROOT" --go_out="$GO_OUT" --go-grpc_out="$GO_OUT" "${PROTO_FILES[@]}"
echo "Go stubs generated into $GO_OUT"
