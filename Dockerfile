FROM fedora:23

RUN dnf install -y curl which
RUN dnf install -y tar
RUN dnf install -y xz

COPY ./install.sh /opt/sandstorm/

RUN \
set -x && \
mkdir -p /opt/sandstorm
# curl -s https://install.sandstorm.io >/opt/sandstorm/install.sh

RUN \
set -x && \
bash /opt/sandstorm/install.sh -d -e

COPY sandstorm.conf /opt/sandstorm/
