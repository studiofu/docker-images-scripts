FROM debian:stretch-slim

LABEL version="1.0" maintainer="docker user <test@test.com>"

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

