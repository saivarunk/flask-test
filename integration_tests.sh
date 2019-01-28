#!/bin/sh

cd flask-test-source && ls -l

apk update \
  && apk add --virtual build-deps gcc python3-dev musl-dev \
  && apk add postgresql-dev \
  && pip install psycopg2 \
  && apk del build-deps

pip install -r requirements.txt

python -m unittest integration_tests