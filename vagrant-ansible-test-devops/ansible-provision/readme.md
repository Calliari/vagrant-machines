#### ansible 'ping' to test the connection with the server i.e: (web-server-1)
```
ansible --inventory=ansible/inventory/host -m ping web-server-1
```

#### To run the ansible 'ansible-playbook' i.e: (web-server-1)
```
ansible-playbook --inventory=ansible/inventory/host --limit=web-server-1 ansible-provision/playbook.yml
```

#### To access the server, first we need to have the ssh connection working i.e: (web-server-1)
`ssh  web-server-1` if that fails then we need to reconfigure the ssh connection from the `~/.ssh/config` file
In the config file the following settings need to be present.
```
##### Vagrant ssh connection #####
Host web-server-1
  User vagrant
  HostName 1.2.3.4
  IdentityFile ~/.ssh/id_rsa_vagrant_vm_ssh_key
```
