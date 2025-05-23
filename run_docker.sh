#!/bin/bash
docker run --network host --rm -it -p 4000:4000 -v $PWD:/srv/jekyll/ jekyll/jekyll:stable bash
