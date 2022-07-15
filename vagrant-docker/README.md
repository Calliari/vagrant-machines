# vagrant-docker


# Using this "vagrant-docker" repo
 ## Instructions
  * Download and install the following
  1. vagrant software ===> https://www.vagrantup.com/downloads.html
  2. virtualbox ===> https://www.virtualbox.org/wiki/Downloads

  ## clone this repo to start working in the VM

  ```
  git clone https://github.com/Calliari/vagrant-docker.git
  ```

## Spin up the VM
The VM will install docker and some other packages

```
vagrant up
```

## After the VM finish the all the installtions do

pulling the docker container from my docker hub

```
sudo docker pull caliari/ubuntu-apache
```

### Find out the image ID with the following CMD

```
sudo docker images
```

### Run the docker image after pulling it

```
sudo docker run --net=host -d -t image ID
```

## To check if the apache2 is running correctly just go to you browser
```
http://development.local
```

# For using it without VM you can do

## install docker on ubuntu

```
sudo apt-get install docker.io -y
```

##  Add this for docker interface network start to using it for apache

```
sudo echo 'auto docker0
iface docker0 inet static
      address 192.168.10.102
      netmask 255.255.255.0' >> /etc/network/interfaces
```

## Put the interface up for docker
```
sudo ifup docker0
```

## You can also folow the instruction on my Docker hub to use this docker container with apache server

```
https://hub.docker.com/r/caliari/ubuntu-apache/
```
