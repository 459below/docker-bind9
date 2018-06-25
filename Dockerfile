FROM debian

RUN apt update && apt install -y \
 bind9 \
 && rm -rf /var/lib/apt/lists/*
 
RUN touch /var/log/bind.log &&
 chown bind:bind /var/log/bind.log
 
CMD named -u bind && tail -f /var/log/bind.log
