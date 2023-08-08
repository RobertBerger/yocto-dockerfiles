if [ "$#" -ne 2 ]; then
    echo "Usage:"
    echo "./special_tag_push.sh <local tag>       <remote tag>"
    echo "./special_tag_push.sh ubuntu-22.04-base ubuntu-22.04-base"
    echo "./special_tag_push.sh ubuntu-22.04-base ubuntu-22.04-experimental-base"
    exit
fi

source ../container-name.sh

set -x
docker images
docker tag reslocal/yocto:$1 reliableembeddedsystems/yocto:$2
docker images
docker login --username reliableembeddedsystems
docker push reliableembeddedsystems/yocto:$2
set +x
