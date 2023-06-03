
FROM debian:stable-slim
RUN apt update && apt install knot sudo && apt autoclean
COPY knot.conf /etc/knot/
RUN sudo -u knot knotd -d
