#!/bin/bash

if [ $(cat ~/.docker/config.json | jq -rc '.auths') = "{}" ]
then
    echo "[i] Login to a docker repo first.";
    echo "run docker login"
    exit 1;
fi

for image in *
do
    if [ -d "${image}" ]; then
      echo "[i] Rebuilding vimicasa/${image} ..."
      docker build --no-cache -t vimicasa/${image} ./${image}
      docker push vimicasa/${image}
    fi
done