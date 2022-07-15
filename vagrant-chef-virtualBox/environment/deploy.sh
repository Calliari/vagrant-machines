# pull down new code


cd ~/environment
git pull
berks vendor cookbooks
sudo chef-client --local-mode --runlist 'recipe[node-server]'

cd ~/app
git pull
sudo npm install
pm2 kill
pm2 start app.js
