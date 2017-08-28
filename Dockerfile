FROM alpine:latest
MAINTAINER bobo@sideburns.de
ARG SRC="https://github.com/openshift/origin/releases/download/v3.6.0/openshift-origin-client-tools-v3.6.0-c4dd4cf-linux-64bit.tar.gz"
ARG TMP="/tmp/client.tar" 
ARG TMP_DIR="/tmp/extract" 
RUN apk add --update openssl tar &&  \
    wget -O ${TMP} ${SRC} && \
    cd ${TMP_EXTRACT} && \
    pwd && \
    tar  -xvzf ${TMP}  && \
    find ${TMP_EXTRACT} -ls && \
    find ${TMP_EXTRACT} -name oc -type f -exec mv {} /bin \; && \
    rm -rf ${TMP} && \
    rm -rf ${TMP_EXTRACT} 

USER 1001
CMD /bin/oc version
