#!/bin/bash

docker run --rm -v `pwd`/jekyll:/jekyll:rw ceda:blog /jekyll/_util/generate_site.sh
