
# ACME Challenge

ACME is a SpringBoot + Kafka challenge.

## Requirements

You need to install Docker CD and Docker-Compose to up and run this project:
https://docs.docker.com/engine/install/
https://docs.docker.com/compose/install/
    
## Tech Stack

**Server:** Spring Boot 3, MySQL 8, Mock Server and Kafka.


## Run Locally

Clone the project with ssh key:

```bash
  git clone git@github.com:escaravelho/acme.git
```

or using HTTPS:

```bash
  git clone https://github.com/escaravelho/acme.git
```

After download the repository, access the project directory:

```bash
  cd acme
```

And now, execute the command above to get up all environmet:

```bash
  sudo docker-compose up --build
```

## Authors

- [Sandro Santana](https://www.github.com/escaravelho)