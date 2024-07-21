# Docker Environment

A dockerized development environment for Web applications.

This repository contains the **docker-compose.yml** file I use for building the
development environment for my Web applications.

## What does it have?

There are a couple services I use on all my applications.

I use standard ports for standard services, and a port in the 20000-21000 range
for Web interfaces.

### pbertera/syslogserver

This is a system logging server with a Web interface for monitoring. It is old,
based on a 32-bit Ubuntu machine, but for my development purposes it is enough.

In production it is better to use a full monitoring solution instead.

This exposes the following ports:

- 514/tcp
- 514/udp
- 20001/tcp

Username: syslog
Password: syslog

### bitnami/keycloak

This is on open source identity and access management solution. There is also a
PostgreSQL database dedicated exclusively to keycloak.

It is safe to use this in production environments.

This exposes the following ports:

- 20002/tcp
- 20003/tcp

### mailhog/mailhog

This is a mail testing solution for development purposes. In production, e-mail
services such as mailgun, postmark or mailtrap are recommended.

The following ports are exposed:

- 25/tcp
- 20004/tcp

### minio/minio

MinIO is a high-performance object storage server compatible with Amazon S3. In
production you can use it, but it is better to use Amazon S3 or Digital Ocean.

The following ports are exposed:

- 20005/tcp
- 20006/tcp

### memcached

Memcached is a high performance in-memory caching database solution.

The following port is exposed:

- 11121/tcp

### redis

Redis is an open source in-memory store, commonly used as a message broker. You
can use this in production.

Redis works in the following port:

- 6379/tcp

### postgresql

PostgreSQL is the most advanced open source database management system.

It is configured with the following credentials:

- Username: *postgres*
- Password: *postgres*

For development, you can use the following credentials:

- Username: *developer*
- Password: *developer*

For testing, you can use the following credentials:

- Username: *tester*
- Password: *tester*

It exposes the following port:

- 5432/tcp

### mariadb

MariaDB is a popular database management system based in MySQL.

It is configured with the following credentials:

- Username: *root*
- Password: *root*

For development, you can use the following credentials:

- Username: *developer*
- Password: *developer*

For testing, you can use the following credentials:

- Username: *tester*
- Password: *tester*

It exposes the following port:

- 3306/tcp

### mongo

MongoDB is a popular NoSQL database solution.

It is configured with the following credentials:

- Username: *mongodb*
- Password: *mongodb*

The following port is exposed:

- 27017/tcp

## How to use it?

You need to install Docker and Docker Desktop.

You can clone the repository:

```
$ git clone git@github.com:chessandrock/docker-environment.git $HOME/Docker
```

Open a terminal and run the following commands:

```
$ cd $HOME/Docker
$ docker compose up -d
```

Ready. You can use Docker Desktop to manage the system.

## Upgrade containers

The idea of using containers and volumes is that the containers can be upgraded freely without affecting the availability. Special care needs to be taken when upgrading between major versions of MariaDB and PostgreSQL, as there might be breaking changes in the way data is stored.

To upgrade containers, just enter the directory of your docker-compose file and execute the following:

```
$ docker compose pull
$ docker compose up -d
```

## To do

- Add authentication to Redis.
- Add authentication to MongoDB.
- Add a default realm for Keycloak.
- Add an openstreetmap provider.
