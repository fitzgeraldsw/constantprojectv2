# simple API webserver
# Linux x64
FROM ubuntu

# LABEL key="value"

ARG DEBIAN_FRONTEND=noninteractive

# install Golang
RUN apt update
RUN apt upgrade
RUN apt install -y golang-go
RUN mkdir -p /home/user/go/src


# copy app code to correct location in container
COPY . /home/user/go/src

# set working directory
WORKDIR /home/user/go/src

# install dependencies
RUN go get

# entry point for code
ENTRYPOINT ["go","run","main.go"]