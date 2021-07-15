echo on
docker build -t ahmadirfaan/node-js-job .
docker push ahmadirfaan/node-js-job
docker container create --name node-js-job ahmadirfaan/node-js-job
docker container start node-js-job
docker container logs -f node-js-job
docker container stop node-js-job
docker container rm node-js-job
docker image ls
pause