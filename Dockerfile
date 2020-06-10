FROM ubuntu:16.04

MAINTAINER BALA<bala@test.com>

RUN apt-get update && apt-get upgrade -y && apt-get install -y rsync &&  apt-get install sudo && apt-get install dpkg && apt-get install -y apt-transport-https && apt-get install -y apt-utils && apt-get install -y cmake

WORKDIR /home/sesto

COPY amr-0.0.0.tar.gz ./

RUN tar -zxvf amr-0.0.0.tar.gz

RUN cd ./install/bin
