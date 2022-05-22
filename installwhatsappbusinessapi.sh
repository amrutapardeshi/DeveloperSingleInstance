#!/bin/sh
sudo apt update
sudo apt -y upgrade
sudo apt install python3.8-venv
python3 -m venv my-project-env
source my-project-env/bin/activate

# First we are going to un-install old versions by using below command
sudo apt-get remove docker docker-engine docker.io containerd runc
# Install using the repository
sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu `lsb_release -cs` test"
sudo apt update
sudo apt install docker-ce
# To check if the installation ended successfuly, just run:
docker -v
sudo docker run hello-world

# Install DOCKER-COMPOSE :
# First un-install the old versions of Docker-Compose
pip uninstall docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

# Run the following code in your preferred location for the WhatsApp Business API client:
mkdir ~/biz; cd ~/biz;
# For a MySQL database setup, clone the docker-compose.yml and db.env configuration files from the Installation directory to the ~/biz directory you created in Step 1.
wget https://raw.githubusercontent.com/WhatsApp/WhatsApp-Business-API-Setup-Scripts/main/installation/docker-compose.yml
wget https://raw.githubusercontent.com/WhatsApp/WhatsApp-Business-API-Setup-Scripts/main/installation/db.env

# The WA_API_VERSION environmental variable should be set to the current version using:
export WA_API_VERSION=2.37.2
