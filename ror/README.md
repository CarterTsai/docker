Rails 4.1.5 Development Environment
===================================

### Create Images

```
$> /bin/bash makeImage.sh
```

### Run Image
```
$> sudo docker run -i -t \      
        -p 3000:3000 \  
        -v $PWD/project:/srv/project \  
        carter/rails415 
```
Using ruby 2.0.0 on container

```
$> rvm use 2.0.0
```

### Create rails project

```
$> rails new app
```
