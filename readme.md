# 1C Server

## Usage image

Add to Dockerfile

    FROM temrdm/1c_server:8.3

## Manual build

### Dependency

Download from [users.v8.1c.ru](https://users.v8.1c.ru/distribution/project/Platform83) postgres deb package and extract it to ```./8.3/dist``` path.

### Build

Building container

    docker build -t server ./8.3

Create data volume container
  
    docker create -v /home/usr1cv8 -v /var/log/1c --name serverdata server /bin/true

### Run

    docker run -d -p 1540-1541:1540-1541 -p 1560-1591:1560-1591 --volumes-from serverdata --name server --restart=always server

### Shell

    docker run -i --volumes-from serverdata -t server /bin/bash
