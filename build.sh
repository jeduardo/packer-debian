#!/bin/bash

# Enable logging
export PACKER_LOG=1
export PACKER_LOG_PATH=build-output.log
export TYPE="${2:-qemu}"

packer validate stretch-$TYPE.json &&
packer build -var-file=$1 stretch-$TYPE.json ${3:@}
