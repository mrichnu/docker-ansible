FROM ubuntu:xenial

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y ansible python-boto