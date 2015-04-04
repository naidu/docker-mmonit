FROM ubuntu:14.04
RUN apt-get -y update && apt-get -y install wget
RUN wget https://mmonit.com/dist/mmonit-3.4.1-linux-x64.tar.gz
RUN tar xf mmonit-3.4.1-linux-x64.tar.gz
EXPOSE 8080
ENTRYPOINT ["/mmonit-3.4.1/bin/mmonit", "-i"]
