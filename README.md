# Task3_Devops
## Overview

Docker container running Apache web server and MySQL database managed by Supervisor.

## Files

* **Dockerfile**: Container definition.
* **supervisord.conf**: Supervisor config for Apache and MySQL.
* **index.html**: Test page.
* **docker\_history.png**: Screenshot of image layers and sizes.

## Build

```bash
sudo docker build -t duran_c_image_2025-06-08 .
```

## View Layers

```bash
sudo docker history duran_c_image_2025-06-08
```

Save the full output screenshot as **docker\_history.png**.

## Author

Duran Camilo
