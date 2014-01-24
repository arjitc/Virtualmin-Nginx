#!/bin/bash
wget https://raw.github.com/arjitc/Virtualmin-Nginx/master/webmin.repo -O /etc/yum.repos.d/webmin.repo
wget http://www.webmin.com/jcameron-key.asc
rpm --import jcameron-key.asc
/etc/init.d/httpd stop
chkconfig httpd off
yum install nginx -y
/etc/init.d/nginx start
chkconfig nginx on
yum install wbm-virtualmin-nginx wbm-virtualmin-nginx-ssl -y
