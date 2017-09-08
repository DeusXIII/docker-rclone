FROM alpine
MAINTAINER Sylvain JACOUTY

RUN apk -U add ca-certificates \
 && rm -rf /var/cache/apk/*

RUN cd /tmp \
  && wget -q http://downloads.rclone.org/rclone-current-linux-amd64.zip \
  && unzip rclone-current-linux-amd64.zip \
  && cd rclone-*-linux-amd64 \
  && cp rclone /usr/bin/ \
  && rm -rf rclone* \
  && chown root:root /usr/bin/rclone \
  && chmod 755 /usr/bin/rclone

CMD ["rclone", "--version"]
