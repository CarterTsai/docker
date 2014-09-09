Create MongoDB with Ubuntu 14.04
================================

Reference:
1. https://docs.docker.com/examples/mongodb/    
2. https://registry.hub.docker.com/u/dockerfile/mongodb/    
3. https://docs.docker.com/reference/commandline/cli/#run   


### Make Images

$> bash ./makeImage.sh

### Run MongoDB

$> sudo docker run \    
    --name mongodb1 \   
    -p 27017:27017 \    
    -p 28017:28017 \    
    -d carter/mongodb --noprealloc --smallfiles --rest \    
    --httpinterface 

### Checking out the logs of a MongoDB container

Usage: sudo docker logs <name for container>    
$> sudo docker logs mongodb1    
