FROM registry.access.redhat.com/jboss-eap-7/eap70-openshift

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

COPY ./resources/ /opt/eap/

USER root

RUN chown -R jboss:jboss /opt/eap/* && find /opt/eap/standalone -type d -exec chmod 777 {} +

USER 185 
