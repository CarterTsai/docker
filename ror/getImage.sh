#!/bin/bash

sudo docker pull cartertsai/rails4.1.5

sudo docker run -i -t \      
    -p 3000:3000 \  
    -v $PWD/project:/srv/project cartertsai/rails4.1.5
