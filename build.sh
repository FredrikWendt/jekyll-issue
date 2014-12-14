#!/bin/bash

# builds the Docker container used to run Jekyll

docker pull ubuntu:trusty
docker build -t ceda:blog .

