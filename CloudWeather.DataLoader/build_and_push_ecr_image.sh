#!/bin/bash
set -e

aws ecr get-login-password --region us-east-2 --profile weather-ecr-agent | docker login --username AWS --password-stdin 124355675040.dkr.ecr.us-east-2.amazonaws.com
docker build -f ./Dockerfile -t cloud-weather-data-loader:latest .
docker tag cloud-weather-data-loader:latest 124355675040.dkr.ecr.us-east-2.amazonaws.com/cloud-weather-data-loader:latest
docker push 124355675040.dkr.ecr.us-east-2.amazonaws.com/cloud-weather-data-loader:latest
