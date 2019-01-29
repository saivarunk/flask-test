#!/bin/sh

# echo "http://nl.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repository

echo "Hello from script"

apt-get install python3 && apt-get install python3-pip

echo "Python version"
python3 -V

echo "Pip version"
pip3 -V

cd flask-test-source && ls -l

pip3 install -r requirements.txt

python3 -m unittest integration_tests