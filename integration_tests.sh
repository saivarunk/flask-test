#!/bin/sh

# install python and dependencies

apt-get install -y python3 && apt-get install -y python-pip

# export PYTHON_PIP_VERSION=19.0.1

# set -ex; \
# 	\
# 	savedAptMark="$(apt-mark showmanual)"; \
# 	apt-get update; \
# 	apt-get install -y --no-install-recommends wget; \
# 	\
# 	wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; \
# 	\
# 	apt-mark auto '.*' > /dev/null; \
# 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; \
# 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
# 	rm -rf /var/lib/apt/lists/*; \
# 	\
# 	python get-pip.py \
# 		--disable-pip-version-check \
# 		--no-cache-dir \
# 		"pip==$PYTHON_PIP_VERSION" \
# 	; \
# 	pip --version; \
# 	\
# 	find /usr/local -depth \
# 		\( \
# 			\( -type d -a \( -name test -o -name tests \) \) \
# 			-o \
# 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) \
# 		\) -exec rm -rf '{}' +; \
# 	rm -f get-pip.py

cd flask-test-source && ls -l

python3 get-pip.py

pip install -r requirements.txt

apt-get install --virtual build-deps gcc python3-dev musl-dev \
  && apt-get install postgresql-dev \
  && pip install psycopg2

python3 test_db.py

python3 -m unittest integration_tests