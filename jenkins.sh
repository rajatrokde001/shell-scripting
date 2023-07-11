#!/bin/bash

# Add the Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to package sources
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package information
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on system boot
sudo systemctl enable jenkins

# Print the initial Jenkins administrator password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
