# Dockerfile para Apache + MySQL
FROM ubuntu:20.04
MAINTAINER Duran Camilo <revxngedev4@gmail.com>
ENV MYSQL_ROOT_PASSWORD=MiPassSecreta \
    MYSQL_DATABASE=appdb \
    MYSQL_USER=appuser \
    MYSQL_PASSWORD=appuserpass
WORKDIR /opt/setup
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      apache2 \
      mysql-server \
      supervisor && \
    rm -rf /var/lib/apt/lists/*
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY index.html /var/www/html/index.html
VOLUME ["/var/lib/mysql", "/var/www/html"]
RUN useradd -m appuser && \
    chown -R appuser:appuser /var/www/html
USER appuser
EXPOSE 80 3306
CMD ["/usr/bin/supervisord", "-n"]
