#!/bin/sh

# echo "http://nl.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repository

apk update && apk upgrade

echo "Hello from script"

# sudo apk add build-base

# setup postgres db for integration tests
# apk add postgresql postgresql-contrib

# Initialize database
# /etc/init.d/postgresql start

# Enable and start postgresql server
# rc-update add postgresql

pwd

cd flask-test-source && ls -l

# ./setup.sh

# apk update \
#   && apk add --virtual build-deps gcc python3-dev musl-dev \
#   && apk add postgresql-dev \
#   && pip install psycopg2 \
#   && apk del build-deps

pip install -r requirements.txt

python -m unittest integration_tests