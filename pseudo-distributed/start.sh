#!/bin/bash

service ssh start;
start-dfs.sh;
start-yarn.sh;
mr-jobhistory-daemon.sh start historyserver;

