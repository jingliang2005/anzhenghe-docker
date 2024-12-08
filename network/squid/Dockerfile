FROM ubuntu:24.04
LABEL maintainer="anzhenghe"

# 健康检查
HEALTHCHECK --interval=3s --retries=20 CMD nc -z localhost 3128

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y squid nano \
 && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* 

 WORKDIR /opt/squid

COPY ./ /opt/squid

EXPOSE 3128/tcp
# CMD ["squid","-f","/etc/squid/squid.conf","-NYCd","1"]
ENTRYPOINT ["/opt/squid/entrypoint.sh"]