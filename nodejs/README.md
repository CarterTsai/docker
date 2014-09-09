Dockerizing a Nodejs Web App with Ubuntu 14.04
==============================================

Reference: [Dockerizing a Node.js Web App][1]

### 1. Build Images

```
$> sudo docker build -t testname/ubuntu-node .

```

### 2. Run Images

```
$> sudo docker run -p 49160:3000 -d testname/ubuntu-node
```

### 3. Open Your Browser

```
http://localhost:49160
```

### 4. Test
```
$> curl -i localhost:49160
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
