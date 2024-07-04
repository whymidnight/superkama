#!/bin/bash


pushd pkgs/nakama-plus
go install \
    "google.golang.org/protobuf/cmd/protoc-gen-go" \
    "google.golang.org/grpc/cmd/protoc-gen-go-grpc" \
    "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway" \
    "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2"
env PATH="$HOME/go/bin:$PATH" go generate -x ./apigrpc
env PATH="$HOME/go/bin:$PATH" go generate -x ./console
popd

pushd pkgs/nakama-common
go install \
    "google.golang.org/protobuf/cmd/protoc-gen-go"
env PATH="$HOME/go/bin:$PATH" go generate -x ./api
env PATH="$HOME/go/bin:$PATH" go generate -x ./rtapi
popd

pushd pkgs/nakama-kit
env PATH="$HOME/go/bin:$PATH" go generate -x ./pb
popd
