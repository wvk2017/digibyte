FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/DigiByte-Core/digibyte/releases/download/v8.26.2/digibyte-8.26.2-x86_64-linux-gnu.tar.gz
RUN tar zxvf digibyte-8.26.2-x86_64-linux-gnu.tar.gz
RUN mv digibyte-8.26.2-x86_64-linux-gnu/bin/* /usr/bin/
CMD /usr/bin/digibyted -printtoconsole
