FROM debian:jessie
MAINTAINER xxaxxelxx <x@axxel.net>

#RUN sed -e 's/$/ contrib non-free/' -i /etc/apt/sources.list 

RUN apt-get -qq -y update
#RUN apt-get -qq -y dist-upgrade

ENV TERM=xterm

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -qqy mc
RUN apt-get install -qqy lighttpd

# clean up
RUN apt-get clean

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
#CMD [ "bash" ]
