#The script to build docker image

export TYPE=$BRANCH
export TAG=0.${BUILD_VERSION}
export PATH=/usr/libexec/docker/cli-plugins:$PATH
docker-compose -f docker-compose.yml build
if [[ $? eq 0 ]]
then
echo "docker build by docker-compose is successful"
exit 0
else
echo "docker build failed"
exit 1
fi
