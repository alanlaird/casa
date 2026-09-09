FROM ghcr.io/linuxcontainers/debian-slim:latest

RUN apt update ; apt install -y python3 git direnv rclone fuse3 python3-venv vim

WORKDIR /root
SHELL ["/bin/bash", "-c"]
#ENTRYPOINT ["bash"]

RUN mkdir /data
RUN python3 -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install linode-cli boto3
ADD .bashrc /root
RUN rclone selfupdate
RUN mkdir /root/bin
ADD sync.sh /root/bin
RUN chmod -R 755 /root/bin
