FROM ubuntu:20.04

ENV APP_VERSION=1.0.0

WORKDIR /mydir

COPY foo.txt .

RUN apt-get -y update && apt-get -y install net-tools curl

EXPOSE 80

ENTRYPOINT [ "echo", "hello"]
CMD ["world"]