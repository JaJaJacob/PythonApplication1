FROM ubuntu:16.04

RUN python -m ensurepip --upgrade

RUN python get-pip.py

RUN python -m pip install flask

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask -run --host=0.0.0.0 --port=8080
