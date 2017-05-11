#!/bin/bash -ex

yum -y update

# timezone
rm -f /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --localtime --hctosys

# security
systemctl stop firewalld
systemctl disable firewalld
