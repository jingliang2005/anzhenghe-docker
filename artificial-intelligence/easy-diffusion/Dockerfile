FROM ubuntu:22.04
LABEL maintainer="anzhenghe"

# AUTOMATIC1111-stable-diffusion-webui

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
 nano wget curl bzip2 git python3 python3-venv libgl1 libglib2.0-0 \
 && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* 

 WORKDIR /opt/easy-diffusion

 COPY . /opt/easy-diffusion
 RUN chmod -R 777 /opt/easy-diffusion
# RUN useradd --system -s /sbin/nologin azh
# USER azh

EXPOSE 9000/tcp
ENTRYPOINT ["/opt/easy-diffusion/start.sh"]