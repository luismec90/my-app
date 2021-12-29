#!/bin/sh

# Install Python

if ! python3.8 --version ; then
    sudo amazon-linux-extras install -y python3.8
fi
