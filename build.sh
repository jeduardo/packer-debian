#!/bin/bash

# Enable logging
export PACKER_LOG="yes"
export PACKER_LOG_PATH="build_output.log"

packer validate jessie.json && 
packer build -var-file=$1 jessie.json ${2:@}
