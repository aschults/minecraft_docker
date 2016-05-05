FROM alpine
RUN apk update
RUN apk add openjdk8-jre gettext
COPY build.sh /
COPY minecraft_srv.sh /
COPY srv_gen_properties.sh /
EXPOSE 25565
EXPOSE 25566
RUN mkdir /savegames
VOLUME ["/savegames"]
ENTRYPOINT sh minecraft_srv.sh
#ENV minecraft_version 1.7.10
#ENV forge_version 10.13.4.1614
#RUN sh build.sh
