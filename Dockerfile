FROM debian:stretch-slim

COPY a.txt /text/
COPY b.txt /text/
WORKDIR /text/

