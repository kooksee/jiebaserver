FROM ubuntu:16.04

RUN rm -rf /app && mkdir /app && mkdir /kdata
COPY main /app/jiebaserver
COPY dict /app/dict
WORKDIR /app

ENTRYPOINT ["/app/jiebaserver"]