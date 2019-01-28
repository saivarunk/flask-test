FROM python:3.6.4-alpine3.7 AS build

WORKDIR /app

ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

FROM build as test

ADD app.py /app/app.py
ADD integration_tests.sh /app
ADD integration_tests.py /app

# RUN /bin/sh "./integration_tests.sh"

FROM test as runtime

EXPOSE 5000

CMD ["python", "app.py"]