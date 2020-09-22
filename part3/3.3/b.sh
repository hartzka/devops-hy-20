#!/bin/sh

echo "Hello, let's clone a git repo, build an image of it and send to docker hub!"
author="docker-hy" #modify this
repo="docker-hy.github.io" #and this
git clone "https://github.com/${author}/${repo}"
cd ${repo}
docker build -t ${repo} .
docker tag ${repo} kaihartz/${repo}:first
docker push kaihartz/${repo}
