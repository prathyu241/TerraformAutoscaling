#!/bin/bash
# Update the package list and upgrade installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Apache, MySQL, PHP, and related packages
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

# Start the Apache web server
sudo systemctl start apache2

# Enable Apache to start on boot
sudo systemctl enable apache2

# Start and enable MySQL
sudo systemctl start mysql
sudo systemctl enable mysql

# Secure MySQL installation (you'll be prompted to set the root password)
sudo mysql_secure_installation

# Install PHP modules (you can add more modules as needed)
sudo apt-get install -y php-mbstring php-gd php-curl php-xml php-xmlrpc php-zip

# Restart Apache to apply PHP changes
sudo systemctl restart apache2