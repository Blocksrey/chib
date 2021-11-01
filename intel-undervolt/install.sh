#!/bin/bash

cd $(dirname "$0") &&

xbps-install -yS intel-undervolt &&

cp intel-undervolt.conf /etc &&
intel-undervolt apply &&

echo "Undervolt suceeded" ||
echo "Undervolt failed!!!"
