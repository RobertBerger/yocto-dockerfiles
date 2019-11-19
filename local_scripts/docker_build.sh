#!/bin/bash
source ../container-name.sh

if [ $# -lt 1 ];
then
    echo "+ $0: Too few arguments!"
    echo "+ use something like:"
    echo "+ $0 <docker image>" 
    echo "+ $0 reslocal/${CONTAINER_NAME}"
    exit
fi

pushd ..
export BASE_DISTRO="ubuntu-16.04"
export DISTRO_TO_BUILD="${BASE_DISTRO}"
export REPO="reslocal/crops-yocto-container"
./build_container.sh
popd
