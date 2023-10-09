#!/usr/bin/env/ bash

# Install GIT
add-apt-repository ppa:git-core/ppa && sudo add-apt-repository ppa:git-core/ppa && sudo apt update && sudo apt install git

# Install Python
sudo apt update && sudo apt upgrade
sudo apt install wget build-essential libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
sudo add-apt-repository ppa:deadsnakes/ppa && sudo apt install python3.11
python --version

# Add alias for Python
alias python=python3

# Install Node using NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install 16.20.1 # Just in case
nvm install 18
nvm use 18
node -v
nvm alias default 18

# Download Visual Studio Code from Official website
# Using Debian package
# Visit https://code.visualstudio.com/download
# Go to your Download folder (like cd ~/Download)
cd ~/Download && ll *.deb
sudo dpkg -i code_{latest version downloaded}_amd64.deb

# Need to setup you personal access token
# Visit https://github.com/settings/tokens/new
# Add your github token
echo "export COMMON_ACTIONS_PACKAGES_PAT=HERE-GOES-YOUR-TOKEN" >> ~/.bashrc
nano ~/.bashrc
# Close current terminal and open a new terminal to validate changes
env | grep COMMON

# Create your Private Key
ssh-keygen -t rsa
# Copy to Document to get an easy access
cp id_rsa.* ~/Documents/
nano ~/Documents/id_rsa.pub
# Copy your public key here
# Visit https://github.com/settings/ssh/new

# Clone the repository
git clone git@github.com:dsg-tech/dcsg-ngx-ecommerce.git
cd dcsg-ngx-ecommerce/
npm i

node -v && python --version && env | grep COMMON
