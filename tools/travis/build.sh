#!/bin/bash

set -ex

SCRIPTDIR=$(cd $(dirname "$0") && pwd)
ROOTDIR="$SCRIPTDIR/../.."

cd "$ROOTDIR"
cd blue
./gradlew :runtimes:nodejs-ibm:distDocker
