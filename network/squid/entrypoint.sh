#!/bin/bash
set -e

$(which squid) -N -f /opt/squid/conf/squid.conf -z  
exec $(which squid) -f /opt/squid/conf/squid.conf -NYCd 1
