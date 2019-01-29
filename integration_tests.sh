#!/bin/sh

# install python and dependencies

apt-get install python3 && apt-get install python-pip

apt-get install -y curl

curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py
python3 get-pip.py

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

echo "Python version"
python3 -V

echo "Pip version"
pip3 -V
pip -V

cd flask-test-source && ls -l

pip install -r requirements.txt

python3 -m unittest integration_tests