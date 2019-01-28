#!/bin/sh

cd flask-test-source && ls -l

pip install -r requirements.txt

python -m unittest integration_tests