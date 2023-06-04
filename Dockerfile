
FROM debian:stable-slim
RUN apt update -y && apt install -y knot sudo && apt -y clean && rm -rf /var/lib/apt/lists/
COPY knot.conf /etc/knot/
RUN sudo -u knot knotd -d
