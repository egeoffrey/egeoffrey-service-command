### EGEOFFREY ###

### define base image
ARG SDK_VERSION
ARG ARCHITECTURE
FROM egeoffrey/egeoffrey-sdk-alpine:${SDK_VERSION}-${ARCHITECTURE}

### install dependencies
RUN apk update && apk add curl expect sshpass openssh-client && rm -rf /var/cache/apk/*

### copy files into the image
COPY . $WORKDIR
