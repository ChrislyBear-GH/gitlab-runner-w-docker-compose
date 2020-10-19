FROM gitlab/gitlab-runner:alpine

# Add pip
RUN apk add python3 py3-setuptools py3-pip python3-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip install docker-compose

# Add docker group (I always use GID 998)
RUN addgroup -g 998 docker && \
    addgroup gitlab-runner docker
