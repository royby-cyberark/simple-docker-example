# simple-docker-example

The docker image is defined in the Dockerfile. See comments in the Dockerfile for more information.

## Build the docker image

the image name is "simple-python-app", the . means that it will look for the Dockerfile in the current directory

`docker build -t simple-python-app .`

## Run the docker container
* mount - mount a local directory to the container. in this case the local directory is /Users/<my-user-name>/storage and the container directory is /storage
  * https://towardsai.net/p/l/a-guide-to-persistent-storage-in-docker
  * https://docs.docker.com/storage/bind-mounts/

* -p 8080:8080 - publish the container port 8080 to the host port 8080
  * https://docs.docker.com/engine/reference/commandline/run/#publish

* -it - run the container in interactive mode
* --rm - remove the container when it exits
* --name simple-python-app - name the container simple-python-app


`docker run --mount type=bind,source="/Users/<my-user-name>/storage",target=/storage  -p 8080:8080 -it --rm --name simple-python-app simple-python-app`




