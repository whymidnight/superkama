#!/bin/bash

pushd nakama-plus
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd

pushd nakama-common
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd

pushd nakama-kit
git grep -lrz doublemo | xargs -0 sed -i '' -e 's/doublemo/whymidnight/g'
popd
