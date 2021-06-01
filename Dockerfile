FROM amazonlinux:latest

RUN yum -y groupinstall "Development Tools"

COPY https://github.com/Kitware/CMake/releases/download/v3.20.3/cmake-3.20.3-linux-x86_64.sh /tmp/
RUN chmod +x /tmp/cmake-3.20.3-linux-x86_64.sh
RUN /tmp/cmake-3.20.3-linux-x86_64.sh --skip-license --prefix=/usr/local
RUN rm /tmp/cmake-3.20.3-linux-x86_64.sh

