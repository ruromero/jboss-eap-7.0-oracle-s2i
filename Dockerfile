FROM registry.access.redhat.com/jboss-eap-7/eap70-openshift

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

COPY ./resources/* /opt/eap/

