# vagrant-docker

### Instructions to create a repo from CLI

#### First step - generete the link between local and remote  
``` curl -u 'calliari' https://api.github.com/user/repos -d '{"name":"vagrant-docker"}' ```

#### Second step - …or create a new repository on the command line

```
echo "# vagrant-docker" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Calliari/vagrant-docker.git
git push -u origin master

```

#### third step - Terminal will ask the details for credentials from git "Username" & "Password"

```
Username for 'https://github.com': calliari
Password for 'https://calliari@github.com': 
```
 #### Fourth step - 
 
 ```
git add . &&
git commit -m 'This is may first commit in this repo' &&
git push
```
