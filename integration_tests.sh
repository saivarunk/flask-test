#!/bin/sh

# echo "http://nl.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repository

echo "Hello from script"

apt-get install python3 && apt-get install python-pip

echo "Python version"
python3 -V

echo "Pip version"
pip3 -V
pip -V

cd flask-test-source && ls -l

pip install -r requirements.txt

python3 -m unittest integration_tests