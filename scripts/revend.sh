#!/bin/bash

pushd pkgs/nakama-plus
go mod tidy
go mod vendor
popd

pushd pkgs/nakama-common
go mod tidy
go mod vendor
popd

pushd pkgs/nakama-kit
go mod tidy
go mod vendor
popd
