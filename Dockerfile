FROM base/archlinux
MAINTAINER Limbomedia <admin@limbomedia.net>

ADD http://limbomedia.net/files/limbomedia-1.5-bin.zip /

RUN pacman -Syu --noconfirm unzip jre8-openjdk-headless ffmpeg imagemagick
RUN unzip limbomedia-1.5-bin.zip
RUN mkdir data

VOLUME /data

EXPOSE 8000
EXPOSE 8001

ENTRYPOINT java -Dlm.dir.data=/data -Dlm.upnp.enabled=false -jar /limbomedia-1.5/limbomedia.jar
