#!/usr/bin/env bash

set -xe

pushd /opt/atavism_server/bin

mkdir -p run/master
mkdir -p run/world

case "$1" in
    auth)
        CMD="./auth.sh -v"
        $CMD start
        reptyr -L -T $(<run/master/auth.pid)
        ;;
    *)
        CMD="./world.sh -v"
        jobs
        $CMD $1
        reptyr -L -T $(<run/world/$1.pid)
        ;;
esac