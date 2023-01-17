#The script to build docker image

export TYPE=$1
export TAG=0.$2
docker tag local-image-${TYPE}:${TAG} username/reponame:$TAG
if [[ $? -ne 0 ]]
then
echo "docker tag  is failed"
exit 1
fi
docker push username/reponame:$TAG
if [[ $? -eq 0 ]]
then
echo "docker deploy is successful"
exit 0
else
echo "docker deploy failed"
exit 1
