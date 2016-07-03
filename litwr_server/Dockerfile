FROM aschults/minecraft_docker:server_1.7.10
ENV LITWR_VERSION=1.1.5
ENV JAVA_OPTS="-Dfml.queryResult=confirm -server -Xmx2048M -Xms2048M -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=2 -XX:+AggressiveOpts"
COPY build_mods.sh /
RUN sh build_mods.sh

