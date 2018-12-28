#!/bin/bash

# relies on being in the current directory (for now)
docker run -p 8080:8080 -p 50000:50000 -v $PWD/jenkins:/var/jenkins_home:z -t metwatch
