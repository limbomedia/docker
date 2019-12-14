FROM alpine:3.10
MAINTAINER LimboMedia <admin@limbomedia.net>

RUN apk add --update --no-cache openjdk11-jre-headless ffmpeg imagemagick bash

ADD https://limbomedia.net/res/dist/limbomedia-2.13-bin.zip /
RUN unzip limbomedia-2.13-bin.zip && rm limbomedia-2.13-bin.zip && mkdir data

VOLUME /data

EXPOSE 8000
EXPOSE 8001

ENTRYPOINT java -Dlm.dir.data=/data -Dlm.upnp.enabled=false -jar /limbomedia/limbomedia.jar
