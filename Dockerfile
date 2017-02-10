FROM scratch

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

COPY /resources/configuration/ /addon/configuration/
COPY /resources/modules/ /addon/modules/
ADD http://oracle-xe/files/ojdbc7.jar /modules/com/oracle/main/

CMD ["/bin/sh"]

