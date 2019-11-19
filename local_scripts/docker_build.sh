#!/bin/bash
source ../container-name.sh

if [ $# -lt 1 ];
then
    echo "+ $0: Too few arguments!"
    echo "+ use something like:"
    echo "+ $0 <DISTRO_TO_BUILD>" 
    echo "+ $0 ubuntu-16.04"
    exit
fi

pushd ..
export DISTRO_TO_BUILD="${1}"
export REPO="reslocal/${CONTAINER_NAME}"
./build_container.sh
popd
