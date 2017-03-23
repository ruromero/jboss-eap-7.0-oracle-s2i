FROM scratch

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

ENV LAST_UPDATE "23-03-2017 17:24"

COPY /configuration/ /addon/configuration/
COPY /modules/ /addon/modules/
ADD http://oracle-xe/files/ojdbc7.jar /modules/com/oracle/main/

CMD ["/bin/sh"]

