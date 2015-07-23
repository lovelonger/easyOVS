# This will generate an image with the easyOVS installed.
# see: https://github.com/yeasy/easyOVS

FROM yeasy/devbase:python
MAINTAINER Baohua Yang

# install needed software
RUN apt-get install openvswitch-switch -y

RUN git clone https://github.com/yeasy/easyOVS.git -b master  && \
bash easyOVS/util/install.sh

VOLUME ["/var/run/openvswitch/"]

CMD [ "/usr/local/bin/easyovs" ]
