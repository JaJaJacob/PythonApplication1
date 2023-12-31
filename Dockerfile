FROM ubuntu:16.04

RUN apt-get update

RUN apt install curl

RUN apt-get install -y python

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python get-pip.py

RUN python -m pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask -run --host=0.0.0.0 --port=8080
