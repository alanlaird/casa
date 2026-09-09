FROM alpine:latest

RUN apk add --update --no-cache python3 py3-pip git direnv rclone fuse3
#RUN pip install --upgrade pip
#RUN pip install direnv

WORKDIR /root
#SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["bash"]

RUN mkdir /data
RUN python3 -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install linode-cli boto3
ADD .bashrc /root

