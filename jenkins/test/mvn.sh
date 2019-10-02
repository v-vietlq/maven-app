#!/bin/bash

echo "***************************"
echo "** Testing code ***********"
echo "***************************"

WORKSPACE=WORKSPACE=/home/vietawake/jenkins-local/jenkins_home/workspace/maven

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"