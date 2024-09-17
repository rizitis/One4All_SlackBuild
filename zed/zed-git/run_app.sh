#!/bin/bash
cd "${0%/*}"
# Set the LD_LIBRARY_PATH to point to the local lib folder
export LD_LIBRARY_PATH=$(pwd)/lib:$LD_LIBRARY_PATH
# Run the app binary
./zed-editor
