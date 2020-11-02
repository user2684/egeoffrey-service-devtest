### EGEOFFREY ###

### define base image
## the SDK version to bind to has to be passed by the builder so to select the right base image
ARG SDK_VERSION
ARG ARCHITECTURE
## Use the small alpine image if you don't have OS dependencies
FROM egeoffrey/egeoffrey-sdk-alpine:${SDK_VERSION}-${ARCHITECTURE}
## Use the raspian image if you have OS dependencies
#FROM egeoffrey/egeoffrey-sdk-raspbian:${SDK_VERSION}-${ARCHITECTURE}

### install your module's dependencies
## python dependencies
#RUN pip install <package>
## OS dependencies (for alpine-based images)
#RUN apk update && apk add <package> && rm -rf /var/cache/apk/*
## OS dependencies (for raspbian/debian images)
#RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && apt-get update && apt-get install -y <package> && apt-get clean && rm -rf /var/lib/apt/lists/*

### copy files into the image
COPY . $WORKDIR