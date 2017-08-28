FROM centos
MAINTAINER bobo@sideburns.de
RUN yum install -y centos-openshift-origin && \
    yum install -y origin-clients && \
    yum clean all && \
    rm -rf /var/cache/yum

USER 1001
CMD /bin/oc version
