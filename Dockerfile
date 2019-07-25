FROM debian:stretch-slim

RUN apt-get install golang
COPY main.go /build/
WORKDIR /build/
RUN go build -o hello main.go

