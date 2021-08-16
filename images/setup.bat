echo on
docker build -t ahmadirfaan/node-js-job .
docker push ghcr.io/ahmadirfaan/node-js-job:1.0
docker container create --name node-js-job ghcr.io/ahmadirfaan/node-js-job:1.0
docker container start node-js-job
docker container logs -f node-js-job
docker container stop node-js-job
docker container rm node-js-job
docker image ls
pause