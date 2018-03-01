FROM alpine
MAINTAINER Sylvain JACOUTY

RUN apk -U add ca-certificates \
 && rm -rf /var/cache/apk/*

RUN wget -q http://downloads.rclone.org/rclone-v1.39-linux-amd64.zip
RUN unzip rclone-current-linux-amd64.zip
RUN cd rclone-*-linux-amd64
RUN cp rclone /usr/bin/
RUN rm -rf rclone*
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone

CMD ["rclone", "--version"]
