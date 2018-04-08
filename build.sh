#!/bin/bash

# Enable logging
export PACKER_LOG="yes"
export PACKER_LOG_PATH="build_output.log"
export TYPE="${2:-qemu}"

packer validate stretch-$TYPE.json &&
packer build -var-file=$1 stretch-$TYPE.json ${3:@}
