### Ansible Intro


Run the command below to confirm that Ansible has been properly installed on the system

```
ansible --version
```

Run this command to install ansible (ubuntu)
install control machine on the machine that is taking control as configuration management

```
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install -y ansible

```
If you run again the ansible version
```
ansible --version
```

This is the details about the ansible installation
```
ansible 2.3.1.0
  config file = /etc/ansible/ansible.cfg
  configured module search path = Default w/o overrides
  python version = 2.7.6 (default, Oct 26 2016, 20:30:19) [GCC 4.8.4]
```

If you want to create the your own Playbook run the following command:

```
nano "playbook name".yml
```

However this ansible-intro-project contains already a Playbook files:

* lamp0.yml
* lamp1.yml
* lamp2.yml
* lamp3.yml
* lamp.yml


Before running this playbook, confirm that apache2 and mysql are *not* installed with the following command

```
dpkg -l apache2 mysql-server
```
===================================================

### 1. Section

This section could be done by sync file option using vagrant file or even provision file, but for simulation purpose we will use scp.

Use this protocol "SCP" to secure copy from local host to remote host or this case VM host.

Run this CMD from localhost

```
scp lamp0.yml vagrant@a-db:~
```

SSH into VM and run the playbook on ansible
```
ansible-playbook lamp0.yml
```

Check again the apache2 and mysql

```
dpkg -l apache2 mysql-server
```
============================================

### 2. Section

Now that you have Apache2 and MySQL installed, you'll want to make sure that they're running, so the playbook has been changed a little bit

Use the "scp" protocol to send this file from localhost to vm host

* lamp1.yml

```
ansible-playbook lamp1.yml
```

Now, if everything was successful we can test this out by opening a new browser tab, and pasting the public IP address into the address bar. This is the same IP address you used to connect via SSH, from the second lab step. If everything went well, then you'll see the default Apache page:

http://192.168.33.10

### 3. Section

This is basically the same as before, except now you're using variables, we changed again the playbook.
Use the "scp" protocol to send this file from localhost to vm host.

* lamp2.yml

```
ansible-playbook lamp2.yml
```

By default Apache ships with only normal HTTP enabled.  To enable the HTTPS site you need to enable the modssl module and enable it on the site. This can be accomplished with these two commands, but don’t run them from the command line. You want to have Ansible do that for you:

```
a2enmod ssl
a2ensite default-ssl
```

### 4. Section

Have a look at the playbook file "lamp3.yml", how to tell ansible to run a command using playbooks.

Use the "scp" protocol to send this file from localhost to vm host.

* lamp3.yml

```
ansible-playbook lamp3.yml
```

This time Check ```https://192.168.33.10```

It's failed because we changed the configuration of the apache2 but we haven't restarted.
So now the last playbook do every thing for us...


### Final Section

This is the completed playbook final version for this project, comments are also added to make it easer to do through.

Use the "scp" protocol to send this file from localhost to vm host.

* lamp.yml

```
ansible-playbook lamp.yml

```
This time Check ```http://192.168.33.10``` without ssl

This time Check ```https://192.168.33.10``` with ssl

You now have a very basic Playbook for installing Apache and MySQL and configuring the HTTPS site.

Happy coding!   :-)
