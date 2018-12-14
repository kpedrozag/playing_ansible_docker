FROM ubuntu:16.04

RUN apt -y update && apt -y upgrade

RUN apt -y install openssh-server

RUN mkdir /var/run/sshd

COPY authorized_keys /root/.ssh/authorized_keys

RUN ["chmod","0600","/root/.ssh/authorized_keys"]

EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
