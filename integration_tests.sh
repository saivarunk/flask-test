#!/bin/sh

# install python and dependencies

apt-get update && apt-get install -y python3 && apt-get install -y python-pip

apt-get install -y curl

curl 'https://bootstrap.pypa.io/get-pip.py' --output get-pip.py 

python3 get-pip.py

cd flask-test-source && ls -l

pip install -r requirements.txt

apt-get install -y python3-dev
apt-get install -y postgresql-dev
pip install psycopg2

/etc/init.d/postgresql start

python3 test_db.py

python3 -m unittest integration_tests