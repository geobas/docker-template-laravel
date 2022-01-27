# Docker template for Laravel/Lumen

Could be used on Linux, OS X and Windows.

Also suitable for other PHP projects, feel free to modify Docker configuration as needed.

## Included services
- PHP 7.4.26 on Apache 2.4.51
- MySQL 8.0.26
- PhpMyAdmin 5.1.1
- MongoDB 4.4
- Mongo Express 0.54.0
- Redis 6.2.6
- RedisInsight 1.11.0

### Prepare the Docker template

1. Clone this repo:

```
git clone git@github.com:geobas/docker-template-laravel.git yourproject
cd yourproject
```

2. Build and run containers:

```
docker-compose build
docker-compose up
```

### Running containers in the background

```
docker-compose up -d
```

### Stop and delete containers


To stop Docker containers run:

```
docker-compose stop
```

To delete Docker containers run:

```
docker-compose down
```

### Main Endpoints

- App URL: ```http://localhost:80```
- PhpMyAdmin: ```http://localhost:8080```
- Mongo Express: ```http://localhost:8081```
- RedisInsight: ```http://localhost:8001```
