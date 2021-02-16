## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-java-docker/blob/main/Dockerfile">latest (20.10.3)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-java-docker/issues">https://github.com/ngacareer/alpine-java-docker/issues</a>

## What is alpine-java-docker ? 

The image is a Linux lightweight, It has been integrated jdk and docker, We can change version of Docker is installed on it, Image runs all docker command line (CLI) and connect to Docker diamon from /var/run/docker.sock

Image supports version of Java :8

## How to use this image
- On Docker 
```
docker run -itd --name alpine-java-docker ngacareer/alpine-java-docker
docker exec -it alpine-java-docker bin/sh
# java -version
# javac -version
 ```
- On Kubernetes
 ```
kubectl run alpine-java-docker --image=ngacareer/alpine-java-docker
kubectl exec -it pod/alpine-java-docker bin/sh
# java -version
# javac -version
 ```
- On OpenShift
 ```
oc new-app --docker-image=ngacareer/alpine-java-docker --name=alpine-java-docker
oc exec -ti $(oc get pod -l app=alpine-java-docker -o jsonpath="{.items[0].metadata.name}") bin/sh
$ java -version
$ javac -version
 ```
