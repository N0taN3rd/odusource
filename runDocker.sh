#!/usr/bin/env bash

docker run --net=host -v $1:/usr/src/app/out osu $2 $3