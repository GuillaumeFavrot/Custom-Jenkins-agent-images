# get the base image
FROM python:bullseye

RUN \
  echo "deb https://deb.nodesource.com/node_20.x bullseye main" > /etc/apt/sources.list.d/nodesource.list && \
  wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get upgrade -yqq && \
  apt-get install -yqq nodejs && \
  pip install -U pip