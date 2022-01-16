FROM python:3.9.0-alpine3.12

WORKDIR /root

COPY requirements/ /root/requirements

RUN apk add --no-cache \
    autoconf \
    automake \
    gcc \
    git \
    jq \
    openssh \
    openssl \
    openssl-dev \
    pip3 install --upgrade pip && \
    pip3 --no-cache-dir install -r /root/requirements/requirements.txt

CMD [ "sh", "init" ]