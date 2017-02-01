FROM registry.access.redhat.com/jboss-eap-7/eap70-openshift

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

ADD http://oracle-xe/files/ojdbc7.jar /opt/eap/modules/com/oracle/main/

USER root

RUN chown -R jboss:jboss /opt/eap/* && \
    find /opt/eap/standalone -type d -exec chmod 777 {} + && \
    find /opt/eap/modules/com -type f -exec chmod 644 {} +

USER 185 
