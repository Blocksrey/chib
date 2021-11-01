#!/bin/bash

cp intel-undervolt.conf /etc &&
intel-undervolt apply &&

echo "Undervolt suceeded" ||
echo "Undervolt failed!!!"
