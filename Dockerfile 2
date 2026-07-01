FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential -y
WORKDIR /opt/
RUN wget https://github.com/DigiByte-Core/digibyte/releases/download/v9.26.2/digibyte-9.26.2-x86_64-linux-gnu.tar.gz
RUN tar zxvf digibyte-9.26.2-x86_64-linux-gnu.tar.gz
RUN mv digibyte-9.26.2/bin/* /usr/bin/
RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
RUN gcc blocknotify.c -o /usr/bin/blocknotify
