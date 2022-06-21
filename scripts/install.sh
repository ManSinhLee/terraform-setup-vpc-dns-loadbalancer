#!/bin/bash
yum -y install httpd
hostname -i >/var/www/html/index.html
systemctl enable httpd --now