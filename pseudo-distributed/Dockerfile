FROM ubuntu:latest

MAINTAINER nikhithn@gmail.com

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y default-jdk ssh

RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
ENV HADOOP_HOME /root/hadoop-2.8.1
ENV PATH $PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

RUN echo "Host *\nStrictHostKeyChecking no\nUserKnownHostsFile=/dev/null" > /root/.ssh/config

ADD  http://apache.cs.utah.edu/hadoop/common/hadoop-2.8.1/hadoop-2.8.1.tar.gz /root

COPY ./hadoop_conf/* $HADOOP_HOME/etc/hadoop/

RUN hdfs namenode -format

COPY ./start.sh /root/
RUN chmod +x /root/start.sh

EXPOSE 8020 50070 50010 50075 50020 37401 50090 8030 8031 8032 8033 8088 13562 44950 8040 8042 10020 10033 19888

ENTRYPOINT /root/start.sh && /bin/bash

#RUN start-dfs.sh
#RUN service ssh start
#RUN start-yarn.sh
#RUN mr-jobhistory-daemon.sh start historyserver


