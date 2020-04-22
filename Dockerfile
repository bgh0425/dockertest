FROM ubuntu
MAINTAINER The finfraTeam Project <bgh0425@gmail.com>

ENV LC_ALL en_US.UTF-8


COPY ./install.sh /
RUN chmod 755 /install.sh

# ENTRYPOINT ["/xx/sshd","sshd"]
run /install.sh
