FROM alpine AS builder

# Download QEMU, see https://github.com/docker/hub-feedback/issues/1261
ENV QEMU_URL https://github.com/balena-io/qemu/releases/download/v3.0.0%2Bresin/qemu-3.0.0+resin-arm.tar.gz
RUN apk add curl && curl -L ${QEMU_URL} | tar zxvf - -C . --strip-components 1

FROM klud/gitlab-runner

# Add QEMU
COPY --from=builder qemu-arm-static /usr/bin

# Add docker-compose and the CLI
RUN apk add docker-compose docker-cli

# Add docker group (I always use GID 998)
RUN addgroup -g 998 docker && \
    addgroup gitlab-runner docker
