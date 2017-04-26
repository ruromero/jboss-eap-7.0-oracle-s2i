FROM scratch

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

ENV LAST_UPDATE "24-03-2017 10:00"

COPY /configuration/ /configuration/
COPY /modules/ /modules/
ADD http://oracle-xe/files/ojdbc7.jar /modules/com/oracle/main/

CMD ["/bin/sh"]

