# Dockerized_Hadoop

This repository provides dockerfiles and related configuration files required to deploy Hadoop. 

There are two dockerfiles:
1. The Standalone deployment that simply deploys Hadoop in standalone mode.  This mode is good for debugging and maybe some basic testing of map reduce jobs.  This is also the most lightweight deployment model.

2. The Pseudo-Distributed deployment that simulates a Hadoop deployment (but again on a single instance).  This stands up a primary namenode, a secondary (or checkpoint) namenode and one tasknode.  

3. (In Progress) The Distributed deployment, which would simulate a multi-node Hadoop deployment by creating separate containers for individual node types.  Then swarm, kubernetes (or even possibly docker compose) could be used to deploy a more realistic distributed Hadoop cluster on a single machine. 

## Use

In order to run the first two deployment models, you can clone this repository and then run:    
```
docker build -t hadoop [path to repository]/[pseudo-distributed or standalone]/    
docker run -it hadoop   
```

You can also pull the docker image for the pseudo-distributed model from nikhithn/hadoop with the below command   
```
docker pull nikhithn/hadoop   
```
And then run it with   
```
docker run -it nikhithn/hadoop   
```

If you want to access hadoop from your host, don't forget to map your ports and add a -p to your command, e.g.
```
docker run -it -p 50070 nikhithn/hadoop
```
Then you will have to run ```docker ps``` to see what port on your docker machine you can use to access the process running on 50070 in your container.  
