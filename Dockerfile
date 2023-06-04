MAINTAINER SYA-KE <syakesaba@gmail.com>
FROM debian:stable-slim
RUN apt update -y && apt install -y knot sudo && apt -y clean && rm -rf /var/lib/apt/lists/
COPY knot.conf /etc/knot/
EXPOSE 53

ADD ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
