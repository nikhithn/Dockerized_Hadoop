FROM ubuntu:latest

MAINTAINER nikhithn@gmail.com

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y default-jdk ssh

ADD  http://apache.cs.utah.edu/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz /root

RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV HADOOP_HOME /root/sw/hadoop-2.8.1
ENV PATH $PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin


