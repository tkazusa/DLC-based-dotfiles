#!/bin/bash
APT_CMD="apt-get install -y"

# Install Node.js Binary Distributions.
# https://nodejs.org/en/download/package-manager/
# Details are here: https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | bash -
$APT_CMD nodejs