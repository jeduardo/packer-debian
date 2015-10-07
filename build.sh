#!/bin/sh

#!/bin/bash

# Enable logging
export PACKER_LOG="yes"
export PACKER_LOG_PATH="build_output.log"

packer validate jessie.json && 
packer build jessie.json $@
