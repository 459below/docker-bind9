FROM debian

RUN apt update && apt install -y \
 bind9 \
 && rm -rf /var/lib/apt/lists/*
 
RUN touch /var/log/bind.log \
&& chown bind:bind /var/log/bind.log

RUN echo "include \"/etc/bind/named.conf.logging\";" >> /etc/bind/named.conf
 
CMD named -u bind && tail -f /var/log/bind.log
