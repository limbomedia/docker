FROM alpine:3.9
MAINTAINER LimboMedia <admin@limbomedia.net>

RUN apk add --update --no-cache openjdk8-jre-base ffmpeg imagemagick bash

ADD https://limbomedia.net/res/dist/limbomedia-2.12-bin.zip /
RUN unzip limbomedia-2.12-bin.zip && rm limbomedia-2.12-bin.zip && mkdir data

VOLUME /data

EXPOSE 8000
EXPOSE 8001

ENTRYPOINT java -Dlm.dir.data=/data -Dlm.upnp.enabled=false -jar /limbomedia/limbomedia.jar
