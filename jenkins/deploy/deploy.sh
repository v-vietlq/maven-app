#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

WORKSPACE=/home/vietawake/jenkins-local/jenkins_home/workspace/maven

scp -i /opt/prod /tmp/.auth root@149.28.35.8:/tmp/.auth
scp -i /opt/prod $WORKSPACE/jenkins/deploy/publish root@149.28.35.8:/tmp/publish
ssh -i /opt/prod root@149.28.35.8 "/tmp/publish"