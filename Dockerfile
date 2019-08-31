# Use args so we can build specific versions
ARG DOCKER_VERSION=19.03.1
ARG COMPOSE_VERSION=1.24.1

FROM docker:${DOCKER_VERSION}

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make
# Separate layer to speed up rebuilds
RUN pip install docker-compose==${COMPOSE_VERSION}

