#!/bin/bash -e

docker build --tag="lalit1980/jmeter-base:latest" -f Dockerfile-base .
docker build --tag="lalit1980/jmeter-master:latest" -f Dockerfile-master .
docker build --tag="lalit1980/jmeter-slave:latest" -f Dockerfile-slave .
docker build --tag="lalit1980/jmeter-reporter" -f Dockerfile-reporter .
docker push lalit1980/jmeter-base:latest
docker push lalit1980/jmeter-master:latest
docker push lalit1980/jmeter-slave:latest
docker push lalit1980/jmeter-reporter

