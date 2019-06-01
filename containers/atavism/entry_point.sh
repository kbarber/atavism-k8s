#!/usr/bin/env bash

set -xe

pushd /opt/atavism_server/bin

case "$1" in
    auth)
        CMD="./auth.sh -vC"
        $CMD start
        ;;
    *)
        CMD="./world.sh -vC"
        $CMD $1
        ;;
esac

while :
do
    $CMD status
	sleep 20
done

$CMD stop