FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install wget
RUN wget https://mmonit.com/dist/mmonit-3.6.2-linux-x64.tar.gz
RUN tar xf mmonit-3.6.2-linux-x64.tar.gz
EXPOSE 8080
ENTRYPOINT ["/mmonit-3.6.2/bin/mmonit", "-i"]
