# Dockerfile for sqitch working on Ubuntu and Postgres

First `apt-get update`

```RUN apt-get update```

It installs sqitch in Ubuntu by performing

```RUN apt-get install -y sqitch libdbd-pg-perl postgresql-client libdbd-sqlite3-perl sqlite3```

To install the prebuilt image from docker hub you can add the entry `geoffsmiths/ubuntu-sqitch:latest`

Please note, the timezone must be set before doing a (for example) `sqitch deploy`

## Example docker-compose.yml

```
version: '3.8'

services:  
  sqitch:
    image: geoffsmiths/ubuntu-sqitch
    container_name: ubuntu-sqitch-container
    volumes:
      - ./sqitch:/sqitch # Adjust to your needs
    environment:
      - TZ=UTC
    command: [ "tail", "-f", "/dev/null" ]
```