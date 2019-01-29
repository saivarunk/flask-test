#!/bin/sh

echo "http://nl.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repository

apk update && apk upgrade

# sudo apk add build-base

# setup postgres db for integration tests
sudo apk add postgresql postgresql-contrib

# Initialize database
sudo /etc/init.d/postgresql start

# Enable and start postgresql server
sudo rc-update add postgresql

# cd flask-test-source && ls -l

# apk update \
#   && apk add --virtual build-deps gcc python3-dev musl-dev \
#   && apk add postgresql-dev \
#   && pip install psycopg2 \
#   && apk del build-deps

# pip install -r requirements.txt

# python -m unittest integration_tests