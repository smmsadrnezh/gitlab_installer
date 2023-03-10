#!/bin/bash

echo 'nameserver 178.22.122.100' >> /etc/resolv.conf
echo 'nameserver 185.51.200.2' >> /etc/resolv.conf
docker pull gitlab/gitlab-ce:latest
docker stop gitlab
docker rm gitlab
cd /root/docker/gitlab/
export GITLAB_HOME=/srv/gitlab
docker-compose up -d
docker logs -f gitlab
