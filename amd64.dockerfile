FROM gitlab/gitlab-runner:alpine

# Add docker-compose and the CLI
RUN apk add docker-compose docker-cli

# Add docker group (I always use GID 998)
RUN addgroup -g 998 docker && \
    addgroup gitlab-runner docker
