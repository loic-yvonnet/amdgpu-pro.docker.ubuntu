FROM ubuntu:16.04

# https://www2.ati.com/drivers/linux/ubuntu/amdgpu-pro-17.40-492261.tar.xz
ADD amdgpu-pro-17.40-492261.tar.xz /tmp

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  cd /tmp/amdgpu-pro-17.40-492261 && \
  ./amdgpu-pro-install

CMD ["bash"]

