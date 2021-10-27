#!/bin/bash
APT_CMD="apt-get install -y"

apt-get update

$APT_CMD curl unzip software-properties-common; apt-get update vim