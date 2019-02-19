FROM ubuntu:16.04
WORKDIR /openvino
RUN apt update
RUN apt install -y sudo pciutils usbutils cpio lsb-release
# install python
RUN apt install -y build-essential curl git python3.5 python3.5-dev python3-pip python3-setuptools 
# install python require
RUN pip3 install numpy pillow
COPY openvino/* .
COPY install.sh .
# install driver
RUN bash install.sh

CMD /bin/bash
