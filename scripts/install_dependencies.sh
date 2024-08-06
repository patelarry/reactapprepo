
#!/bin/bash

# Change to the home directory
cd ~

# Download and execute the NodeSource setup script
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh

# Update package lists and install Node.js
sudo apt-get update
sudo apt-get install -y nodejs

# Install npm (Node Package Manager)
sudo apt-get install -y npm

# Install pm2 globally using npm
sudo npm install -g pm2














# #!/bin/bash

# # this file is being executed in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/

# #stdout logs of this process executing can be found in /opt/codedeploy-agent/deployment-root/47../<deployment_id>/logs/scripts.log

# # here we update the server and install node and npm
# echo installing dependencies
# sudo apt-get update
# curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
# sudo apt-get install nodejs -y
# sudo apt-get -y install npm

# # check to make sure the symbolic link for nodejs node exists
# echo checking for nodejs symlink
# file="/usr/bin/node"
# if [ -f $file ] && [ ! -L $file ] ; then
#   echo "$file exists and is not a symlink"
#   sudo ln -s /usr/bin/nodejs
# else
#   echo "$file exists and is already a symlink"
# fi

# # install the application using npm
# # we need to traverse to where the application bundle is copied too.
# echo installing application with npm
# cd /var/www/
# sudo npm install

# echo installing pm2
# sudo npm install pm2 -g
