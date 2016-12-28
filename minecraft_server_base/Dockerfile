FROM alpine
RUN apk update
RUN apk add openjdk8-jre gettext
COPY build.sh /
COPY minecraft_srv.sh /
COPY srv_gen_properties.sh /
EXPOSE 25565
EXPOSE 25566
RUN mkdir /savegames
VOLUME ["/savegames" "/mc_mods.d/custom]
ENTRYPOINT sh minecraft_srv.sh
RUN mkdir /mc_mods.d /mc_mods.d/custom
