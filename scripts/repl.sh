#!/bin/bash

pushd pkgs/nakama-plus
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd

pushd pkgs/nakama-common
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd

pushd pkgs/nakama-kit
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd
