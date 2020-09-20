# docker radarr by StudioEtrange

* Run radarr inside a docker container built upon debian
* Based on radarr github repository
* Choice of radarr version
* Use supervisor to manage radarr process
* Can choose a specific unix user to run radarr inside docker
* By default radarr configuration files will be in a folder named 'radarr' which will be contained in a docker volume /data
* Optional volume 'movies' used as movies root folder

## Quick Usage

for running latest stable version of radarr :

	mkdir -p data
	docker --name radarr run -d -v $(pwd)/data:/data -p 7878:7878 studioetrange/docker-radarr

then go to http://localhost:7878

## Docker tags

Pre-setted buildable docker tags for studioetrange/docker-radarr:__TAG__

	latest, v0.2.0.1504, v0.2.0.1480, v0.2.0.1450

Current latest tag is version __v0.2.0.1504__

## Instruction

### Build from github source

	git pull https://github.com/StudioEtrange/docker-radarr
	cd docker-radarr
	docker build -t=studioetrange/docker-radarr .

### Retrieve image from docker registry

	docker pull studioetrange/docker-radarr

### Standard usage

	mkdir -p movies
	mkdir -p data
	mkdir -p download
	docker run --name radarr -d -v $(pwd)/data:/data -v $(pwd)/movies:/movies -v $(pwd)/download:/download -p 7878:7878 -e SERVICE_USER=$(id -u):$(id -g) -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro studioetrange/docker-radarr

### Full run parameters

	docker run --name radarr -d -v <data path>:/data -v <movies show path>:/movies -v <download show path>:/download -p <radarr http port>:7878 -e SERVICE_USER=<uid[:gid]>  -p <supervisor manager http port>:9999 -v /etc/timezone:/etc/timezone:ro -v /etc/localtime:/etc/localtime:ro studioetrange/docker-radarr:<version>

### Volumes

Inside container
`/data/radarr` will contain radarr configuration and files
`/movies` is the root folder of your movies
`/download` is the root folder of your downloads files from other software

If any path of theses volumes do not exist on the host while your are mounting them inside container, docker will create it automaticly with root user. You should use mkdir before launching docker to control ownership.


### Access to a running instance

bash access

	docker exec -it radarr bash

### Test a shell inside a new container without radarr running

	docker run -it --rm studioetrange/docker-radarr bash

### Stop and destroy all previously launched services

	docker stop radarr && docker rm radarr

## Access point

### radarr

	Go to http://localhost:RADARR_HTTP_PORT/

### Supervisor process manager

	Go to http://localhost:SUPERVISOR_HTTP_WEB/

## Notes on Github / Docker Hub Repository

* This github repository is linked to an automated build in docker hub registry.

	https://registry.hub.docker.com/u/studioetrange/docker-radarr/

* _update.sh_ is only an admin script for this project which update and add new versions. This script do not auto create missing tag in docker hub webui. It is only for this project admin/owner purpose.
