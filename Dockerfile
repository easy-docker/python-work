FROM ubuntu:bionic

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apt-get update \
  && apt-get install -y python3-pip git memcached mysql-client \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install pipenv

ADD start.sh /start.sh

RUN chmod +x /start.sh \
    && mkdir /data

WORKDIR /data

VOLUME ["/data"]

CMD ["/start.sh"]