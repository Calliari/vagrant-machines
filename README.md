# vagrant-docker

### Instructions to create a repo from CLI

#### (1) First step - generete the link between local and remote  
``` curl -u 'calliari' https://api.github.com/user/repos -d '{"name":"vagrant-docker"}' ```

#### (2) Second step - …or create a new repository on the command line

```
echo "# vagrant-docker" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Calliari/vagrant-docker.git
git push -u origin master

```

#### (3) third step - Terminal will ask the details for credentials from git "Username" & "Password"

```
Username for 'https://github.com': calliari
Password for 'https://calliari@github.com': 
```
 #### (4) Fourth step - 
 
 ```
git add . &&
git commit -m 'This is may first commit in this repo' &&
git push
```
========================================================================

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
