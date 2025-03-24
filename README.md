# FirstDevopApplicationOnFastAPI
this is just the first application built on FastAPI&amp;Devops
Instruction to Run this Appin  UBUNTU:
PART 1. Dockerfile
------------------MyDocker>
1.cd Project :src,  requirements.txt,  Dockerfile etc...
$ docker build -t fastapiapp1-image:1.0.0 .
$ docker run --name fastapiapp1-container -p 8080:8080 fastapiapp1-image:1.0.0

1.1
if we have a  ready image only type:
$ docker run -it fastapiapp-image:1.0.0
OR
From DockerDesktop run the Container and refresh the Browser

2.
Option to check :
http://localhost:8080/  +
# http://0.0.0.0:8080
#  instead http://127.0.0.0:80

ADDITIONAL INFO:
--------------------------------------------------------------------------------------------
$ docker images
REPOSITORY          TAG       IMAGE ID       CREATED         SIZE
fastapiapp-images   1.0.0     13c41e0b68c6   4 minutes ago   225MB


PART 2. Docker-compose
-----------------------
$ docker-compose up 
we can see in DockerDesktop a new container named : firstdevopapplicaionfastapi , done automatically and up running ....

thon-server  | INFO:     Uvicorn running on http://0.0.0.0:8080 (Press CTRL+C to quit)
python-server  | INFO:     Started reloader process [1] using StatReload
python-server  | INFO:     Started server process [8]
python-server  | INFO:     Waiting for application startup.
python-server  | INFO:     Application startup complete.
python-server  | INFO:     172.18.0.1:45074 - "GET / HTTP/1.1" 200 OK


PART 3. To push into DockerHub:
-------------------------------
$ docker images
  docker tag fastapiapp1-image:1.0.0 maxjokar2***0/firstapiapp1
we can see ==>  ma******r2**0/firstapiapp1            1.0.0     443f276f730d   20 minutes ago   225MB
make a repo in DockerHub for it 
  $ docker push maxjokar2020/firstapiapp1:1.0.0
DONE!


