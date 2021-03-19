FROM openjdk:8-jre-alpine

ENV EMBULK_VERSION=0.9.23
RUN wget -q https://dl.embulk.org/embulk-${EMBULK_VERSION}.jar -O /usr/local/bin/embulk \
    && chmod +x /usr/local/bin/embulk

RUN apk add --no-cache libc6-compat \
    && embulk gem install \
    embulk-input-sqlserver \
    embulk-output-sqlserver

ENV TZ=Asia/Tokyo

WORKDIR /work

ENTRYPOINT ["java", "-jar", "/usr/local/bin/embulk"]
