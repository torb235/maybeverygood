FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y curl wget unzip qbittorrent-nox nano htop

ENV VERSION=1.26.1
ENV ARCH=amd64

ADD https://pkgs.tailscale.com/stable/tailscale_${VERSION}_${ARCH}.tgz /tailscale.tgz
RUN mkdir /tailscale && tar xzf /tailscale.tgz -C /tailscale --strip-components 1

RUN wget https://downloads.rclone.org/v1.58.1/rclone-v1.58.1-linux-amd64.zip && unzip -j -d . rclone-v1.58.1-linux-amd64 -x "*.txt" "*.html" "*.1" && chmod 777 rclone

COPY . .
RUN chmod +x *.sh

CMD ["bash", "startup.sh"]

