# Docker FTP Server

Supports passive mode. Based on [Docker Pure-ftpd Server](https://github.com/stilliard/docker-pure-ftpd).

# Features

* Passive mode support with ports 30000-30009
* Public IP/hostname in $FTP_PUBLIC_HOST
* Can adjust connections limits via environmental variables
* Configuration and storage as Docker volumes
* Sample docker-compose.yml

# How to add user

Uses virtual users (not real linux users).

1. Open container terminal
2. `pure-pw useradd bob -u ftpuser -d /home/ftpusers/bob`
3. `pure-pw mkdb`

No restart should be needed. More info on usage here: https://download.pureftpd.org/pure-ftpd/doc/README.Virtual-Users

# Connection test

1. `$ ftp -p localhost 21`
2. `ftp> user bob`
3. `ftp> ls`

# Issues

* Does not support TLS (needs configuration)

