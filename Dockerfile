FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/NitoNetwork/Nito-core/releases/download/v3.0.1/nito-3.0.1-x86_64-linux-gnu.tar.gz
RUN tar zxvf nito-3.0.1-x86_64-linux-gnu.tar.gz
RUN mv nito-3.0.1-x86_64-linux-gnu/bin/* /usr/bin/
CMD /usr/bin/nitod -printtoconsole
