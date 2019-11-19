if [ "$#" -ne 1 ]; then
    echo "Usage:"
    echo "./special_tag_push.sh <tag>"
    echo "./special_tag_push.sh ubuntu-16.04-base"
    exit
fi

source ../container-name.sh

set -x
docker images
docker tag reslocal/yocto:$1 reliableembeddedsystems/yocto:$1
docker images
docker login --username reliableembeddedsystems
docker push reliableembeddedsystems/yocto:$1
set +x
