#!/bin/bash

# install_apache.sh
# Script to install Apache HTTP Server on Amazon Linux 2

set -e  # Exit immediately if a command exits with a non-zero status

echo "Updating package index..."
sudo yum update -y

echo "Installing Apache (httpd)..."
sudo yum install -y httpd

echo "Enabling Apache to start on boot..."
sudo systemctl enable httpd

echo "Starting Apache service..."
sudo systemctl start httpd

echo "<html><h1>Hello World from EC2 instance $INSTANCE_ID</h1></html>" > /var/www/html/index.html

echo "Apache installation completed successfully."


