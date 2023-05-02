FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl

RUN curl -o helixcore.deb https://download.perforce.com/downloads/helix/helix-core-server/r20.2/helix-core-server_20.2.195400-ubuntu-18.04_amd64.deb

RUN apt-get install -y ./helixcore.deb

EXPOSE 1666

CMD /opt/perforce/sbin/p4d -r /var/perforce/root -p 1666
