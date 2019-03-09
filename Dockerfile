FROM alpine:latest

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    mysql-dev \
    build-base \
  && pip install pipenv \
  && rm -rf /var/cache/apk/*

ADD start.sh /start.sh

RUN chmod +x /start.sh \
    && mkdir /data

WORKDIR /data

VOLUME ["/data"]

CMD ["/start.sh"]