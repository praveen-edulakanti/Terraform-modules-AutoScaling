#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-get install -y php libapache2-mod-php php-mysql php-curl php-gd php-json php-zip php-mbstring
sudo a2enmod rewrite
sudo a2enmod ssl
sudo systemctl start apache2
sudo systemctl enable apache2
sudo git config --global user.name "praveen-edulakanti"
sudo git config --global user.email "praveen.edulakanti@gmail.com"
sudo mkdir /var/www/html/user
sudo git clone https://github.com/praveen-edulakanti/user.git /var/www/html/user
sudo mkdir /var/www/html/dashboard
sudo git clone https://github.com/praveen-edulakanti/dashboard.git /var/www/html/dashboard
hostname | sudo tee /var/www/html/index.html
sudo apt-get install -y mysql-server
sudo service mysql start
sudo mysql
CREATE DATABASE IF NOT EXISTS demo;
use demo;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
CREATE USER 'remoteusr'@'%' IDENTIFIED BY 'remotepwd';
GRANT ALL ON demo.* to remoteusr@'%' IDENTIFIED BY 'remotepwd';
FLUSH PRIVILEGES;
exit;