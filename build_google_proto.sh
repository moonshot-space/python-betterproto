#!/bin/bash

PROTOBUF_DIR=/opt/homebrew/Cellar/protobuf/29.3

poetry run python -m grpc_tools.protoc \
    --plugin=protoc-gen-custom=src/betterproto/plugin/main.py \
    --custom_opt=INCLUDE_GOOGLE \
    --custom_out=src/betterproto/lib \
    -I $PROTOBUF_DIR/include/ \
    $PROTOBUF_DIR/include/google/protobuf/*.proto
