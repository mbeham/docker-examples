#!/bin/bash

REPO="mbeham"

for dir in job logging shared_volume simpleservice ; do

  pushd $dir
  docker build -t $REPO/examples:$dir .
  docker push $REPO/examples:$dir
  popd

done