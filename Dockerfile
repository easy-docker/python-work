FROM python:2-alpine

LABEL maintainer="Ghostry <ghostry.green@gmail.com>"

RUN pip install pipenv

ADD start.sh /start.sh

RUN chmod +x /start.sh \
    && mkdir /data

WORKDIR /data

VOLUME ["/data"]

CMD ["/start.sh"]