# CasperJs
# http://casperjs.org/

FROM vitr/casperjs

MAINTAINER zjgsuwk https://github.com/zjgsuwk/casperjs.git

RUN apt-get update 

RUN apt-get -y install curl 

# reset from parent image
ENTRYPOINT []

# run the image as daemon
CMD echo "casperjs running..." && tail -f /dev/null
