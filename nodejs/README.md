Dockerizing a Nodejs Web App with Ubuntu 14.04
==============================================

Reference: [Dockerizing a Node.js Web App][1]

### 1. Build Images Or Get Images

```
$> sudo docker build -t cartertsai/ubuntu-node:0.0.1 .

Or

$> sudo docker pull cartertsai/ubuntu-node:0.0.1

```



### 2. Run Images

```
$> sudo docker run -i -t --rm -p 3000:3000 cartertsai/ubuntu-node:0.0.1
```

### 3. Open Your Browser

```
http://localhost:3000
```

### 4. Test
```
$> curl -i localhost:3000
```

### 5. Stop Node.js Web App

Find out container
```
$> sudo docker ps

CONTAINER ID     IMAGE                        COMMAND             ..........
38570290e559    testname/ubuntu-node:latest   nodejs /srv/run.js  ..........

```

Stop container
```
$> sudo docker stop <container Id>
```

[1]: https://docs.docker.com/examples/nodejs_web_app/ "Dockerizing a Node.js Web App" 
