# Use args so we can build specific versions
ARG DOCKER_VERSION

FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make \
	&& pip install docker-compose==${COMPOSE_VERSION}

