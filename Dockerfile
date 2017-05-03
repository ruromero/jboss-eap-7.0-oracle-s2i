FROM scratch

MAINTAINER Ruben Romero Montes <rromerom@redhat.com>

ENV LAST_UPDATE "26-04-2017 12:00"

COPY /configuration/ /configuration/
COPY /modules/ /modules/
ADD http://oracle-xe/files/ojdbc7.jar /modules/com/oracle/main/
RUN chmod -R +r /configuration
RUN chmod -R +r /modules

CMD ["/bin/sh"]

