#!/bin/sh

# Install GCC

if !  gcc10-c++ --version ; then
    sudo yum groupinstall -y "Development Tools"
    sudo yum install -y gcc10 gcc10-c++
fi
