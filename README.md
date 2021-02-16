## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/1.7/Dockerfile">1.7</a>
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/1.8/Dockerfile">1.8</a>
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/9/Dockerfile">9</a>
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/10/Dockerfile">10</a>
- <a href="https://github.com/ngacareer/alpine-java-ssl/blob/main/Dockerfile">latest (11)</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-java-ssl/issues">https://github.com/ngacareer/alpine-java-ssl/issues</a>

## What is alpine-java-docker ? 

The image is a Linux lightweight, It has been integrated jdk and docker, We can change version of Docker is installed on it, Image runs all docker command line (CLI) and connect to Docker diamon from /var/run/docker.sock

Image supports version of Java :8

## How to use this image
- On Docker 
```
docker run -itd --name alpine-java-ssl ngacareer/alpine-java-ssl
docker exec -it alpine-java-ssl bin/sh
# java -version
# javac -version
 ```
- On Kubernetes
 ```
kubectl run alpine-java-ssl --image=ngacareer/alpine-java-ssl
kubectl exec -it pod/alpine-java-ssl bin/sh
# java -version
# javac -version
 ```
- On OpenShift
 ```
oc new-app --docker-image=ngacareer/alpine-java-ssl --name=alpine-java-ssl
oc exec -ti $(oc get pod -l app=alpine-java-ssl -o jsonpath="{.items[0].metadata.name}") bin/sh
$ java -version
$ javac -version
 ```
