#!/usr/bin/env bash

set -xe

pushd /opt/atavism_server/bin

# Get the log configs into place
cp -f /etc/atavism/*log.xml .

case "$1" in
    auth)
        sed -i -e 's/    &//' auth.sh
        CMD="./auth.sh"
        $CMD start
        ;;
    *)
        sed -i -e 's/    &//' world.sh
        CMD="./world.sh"
        $CMD $1
        ;;
esac