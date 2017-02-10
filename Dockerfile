FROM scratch

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

COPY /configuration/ /addon/configuration/
COPY /modules/ /addon/modules/
ADD http://oracle-xe/files/ojdbc7.jar /modules/com/oracle/main/

CMD ["/bin/sh"]

