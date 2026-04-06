#!/bin/bash
# Initialize build environment

cd build
source ../sources/poky/oe-init-build-env

echo "Build environment initialized. Run 'bitbake core-image-minimal' to build."