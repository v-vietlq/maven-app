#!/bin/bash

echo "***************************"
echo "** Testing code ***********"
echo "***************************"

#WORKSPACE=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm  -v  $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"