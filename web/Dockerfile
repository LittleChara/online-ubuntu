FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -get update && \
    apt-get install -y --no-install-recommends \
        sudo \
        supervisor \
        tightvncserver \
        expect \
        git


RUN sudo adduser e-e-s && \
    sudo usermod -a -G sudo e-e-s


COPY app /app
RUN sudo mkdir -p /root/.vnc
ADD xstartup /root/.vnc/xstartup
ADD vnc.conf /etc/vnc.conf


WORKDIR /root

USER e-e-s

CMD ["/app/spawn-desktop.sh"]
