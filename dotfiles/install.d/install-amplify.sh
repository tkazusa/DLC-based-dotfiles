#!/bin/bash
npm install -g @aws-amplify/cli

# Amplify Mocking require Java runtime
wget -O- https://apt.corretto.aws/corretto.key | apt-key add - 
add-apt-repository 'deb https://apt.corretto.aws stable main'
apt-get update; apt-get install -y java-1.8.0-amazon-corretto-jdk

npm install --save aws-amplify-react aws-amplify 