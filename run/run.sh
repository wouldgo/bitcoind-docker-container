#!/bin/bash

adduser --disabled-password --gecos '' r && \
adduser r sudo && \
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
su -c "/boot/bootstrap.sh" -s /bin/sh r
