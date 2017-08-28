FROM alpine:latest
MAINTAINER bobo@sideburns.de
ARG SRC="https://github.com/openshift/origin/releases/download/v3.6.0/openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit.tar.gz"
ARG TMP="/tmp/client.tar" 
RUN wget -O ${TMP}} ${SRC}} && \
    tar -xzf ${TMP} --wildcards --no-anchored '*/oc' \
    -C /bin && \
    rm ${TMP}

