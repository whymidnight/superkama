#!/bin/bash

pushd nakama-plus
go mod tidy
go mod vendor
popd

pushd nakama-common
go mod tidy
go mod vendor
popd

pushd nakama-kit
go mod tidy
go mod vendor
popd
