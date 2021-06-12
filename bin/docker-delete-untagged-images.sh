#!/bin/bash

echo "removing untagged images"

docker rmi $(docker images --filter "dangling=true" -q --no-trunc) --force

echo "success"
