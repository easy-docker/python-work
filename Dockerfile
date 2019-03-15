FROM ubuntu:bionic

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apt-get update \
  && apt-get install -y python3-pip git memcached mysql-client vim \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install pipenv

ADD start.sh /start.sh

RUN chmod +x /start.sh \
    && mkdir /data \
    && echo 'export LC_ALL=C.UTF-8;export LANG=C.UTF-8;' >> /root/.bashrc

WORKDIR /data

VOLUME ["/data"]

CMD ["/start.sh"]