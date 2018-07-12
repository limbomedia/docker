FROM alpine:3.8
MAINTAINER LimboMedia <admin@limbomedia.net>

RUN apk add --update openjdk8-jre-base ffmpeg imagemagick bash && rm -rf /var/cache/apk/*

ADD https://files.limbomedia.net/limbomedia-2.11-bin.zip /
RUN unzip limbomedia-2.11-bin.zip && rm limbomedia-2.11-bin.zip && mkdir data

VOLUME /data

EXPOSE 8000
EXPOSE 8001

ENTRYPOINT java -Dlm.dir.data=/data -Dlm.upnp.enabled=false -jar /limbomedia-2.11/limbomedia.jar
