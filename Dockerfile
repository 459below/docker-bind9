FROM debian

RUN apt update && apt install -y \
 bind9 \
 && rm -rf /var/lib/apt/lists/*
CMD named -u bind && tail -f /tmp/bind.log
