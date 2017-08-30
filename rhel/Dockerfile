FROM registry.access.redhat.com/rhel7/rhel
MAINTAINER Boris Ruppert <boris.ruppert@sideburns.de>
ENV SUMMARY="RHEL base image with openshift client tools"
ARG OPENSHIFT_VERSION=3.6
RUN yum repolist > /dev/null && \
  yum install -y yum-utils && \
  yum-config-manager --disable \* &> /dev/null && \
  yum-config-manager --enable rhel-7-server-rpms && \
  yum-config-manager --enable rhel-7-server-optional-rpms && \
  yum-config-manager --enable rhel-7-server-ose-${OPENSHIFT_VERSION}-rpms && \
  yum -y --setopt=tsflags=nodocs install atomic-openshift-clients &&  \
  yum clean all && \
  rm -rf /var/cache/yum

USER 1001
CMD /bin/oc version
