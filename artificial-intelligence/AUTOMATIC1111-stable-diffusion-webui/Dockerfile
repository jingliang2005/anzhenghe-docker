FROM ubuntu:22.04
LABEL maintainer="anzhenghe"

# AUTOMATIC1111-stable-diffusion-webui

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
 nano wget git python3 python3-venv libgl1 libglib2.0-0 \
 && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* 

 WORKDIR /opt/AUTOMATIC1111

# RUN wget -q https://raw.githubusercontent.com/AUTOMATIC1111/stable-diffusion-webui/master/webui.sh
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
RUN chmod -R 777 stable-diffusion-webui
RUN useradd --system -s /sbin/nologin azh

USER azh

EXPOSE 7860/tcp
ENTRYPOINT ["/opt/AUTOMATIC1111/stable-diffusion-webui/webui.sh"]