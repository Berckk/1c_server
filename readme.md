# 1C Server

## Set env

    1C_ENV=8.3.6-2299 # For example

## Download dependency

Download from [users.v8.1c.ru](https://users.v8.1c.ru/distribution/project/Platform83) postgres deb package and extract it to ```./${1C_VER}/dist``` path.

## Build

Building container

    docker build -t temrdm/1c_server:${1C_VER} ./${1C_VER}

