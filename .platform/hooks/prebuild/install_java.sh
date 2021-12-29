#!/bin/sh

# Install Java

if ! java --version ; then
    cd $HOME
    wget https://download.oracle.com/java/17/latest/jdk-17_linux-aarch64_bin.rpm
    sudo rpm -ivh jdk-17_linux-aarch64_bin.rpm
fi
