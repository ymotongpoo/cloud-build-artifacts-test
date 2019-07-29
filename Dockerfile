FROM debian:stretch-slim

RUN apt-get -qq update \
  && apt-get install -y --no-install-recommends -q golang
COPY main.go /build/
WORKDIR /build/
RUN echo "hello artifact" > foo.txt
RUN go build -o hello main.go
