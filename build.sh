#!/bin/bash

REPO="427770260507.dkr.ecr.eu-west-1.amazonaws.com"

for dir in job logging shared_volume simpleservice simpleservice2 simpleservice-slow console ; do

  pushd $dir
  docker build -t $REPO/examples:$dir .
  docker push $REPO/examples:$dir
  popd

done

