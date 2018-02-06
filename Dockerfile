# CasperJs
# http://casperjs.org/
#
# Usage
# exec mode
# docker run --rm zjgsuwk/casperjs casperjs --version
# docker run --rm zjgsuwk/casperjs phantomjs --version
#
# daemon mode
# docker run -d --name casperjs-daemon -v /home/ubuntu/test:/mnt/test --restart always zjgsuwk/casperjs

FROM zjgsuwk/phantomjs

MAINTAINER zjgsuwk https://github.com/zjgsuwk/casperjs.git

RUN apt-get install -y git python

WORKDIR /root
RUN git clone git://github.com/casperjs/casperjs.git
RUN mv casperjs /opt/
RUN ln -sf /opt/casperjs/bin/casperjs /usr/local/bin/casperjs
RUN mkdir /home/casperjs-tests

WORKDIR /home/casperjs-tests

# reset from parent image
ENTRYPOINT []

# run the image as daemon
CMD echo "casperjs running..." && tail -f /dev/null
