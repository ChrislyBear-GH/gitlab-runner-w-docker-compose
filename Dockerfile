FROM gitlab/gitlab-runner:alpine

RUN apk add python3 py3-setuptools py3-pip python3-dev libffi-dev openssl-dev gcc libc-dev make &&
    pip install docker-compose