# gitlab-runner-w-docker-compose

Start with

    docker run -d \
    --name gitlab-runner \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v gitlab-runner-config:/etc/gitlab-runner \
    chrisly3ear/gitlab-runner-w-docker-compose:latest
