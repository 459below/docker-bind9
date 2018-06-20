FROM debian

RUN apt update && apt install -y\
 bind9
CMD ["named"]
