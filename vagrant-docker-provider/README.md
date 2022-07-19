This is the vagrant with Docker as provider "ARM64 operating systems on Apple Silicon"

The configuration sits on "Vagrantfile" with the Docker as provider

The image need to be pulled and on the host machine (MAC-OS)"
```
docker pull ubuntu:18.04
```

Create the container from docker image pulled
```
vagrant up
```

Get into the conatiner 
```
docker exec -it ubuntu-18 bash
```