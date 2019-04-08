FROM quay.io/footloose/ubuntu18.04

RUN apt-get update && apt-get install -y \
  sudo kmod locales nano

RUN echo exit 0 > /usr/sbin/policy-rc.d

RUN apt-get install -y 'docker.io=18.06.1*'

# RUN systemctl start docker || true
# RUN systemctl enable docker.service || true
