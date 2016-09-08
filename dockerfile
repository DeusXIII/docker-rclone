FROM alpine
MAINTAINER Sylvain JACOUTY

RUN apk -U add ca-certificates \
 && rm -rf /var/cache/apk/*

RUN cd /tmp \
  && wget -q http://downloads.rclone.org/rclone-current-linux-amd64.zip \
  && unzip rclone-current-linux-amd64.zip \ 
  && mv rclone-*-linux-amd64/rclone /usr/bin \
  && rm -r rclone*

CMD ["rclone", "--version"]
