FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

# install gitbook-cli
RUN \
  /bin/bash -l -c 'npm install -g gitbook-cli' && \
  /bin/bash -l -c 'gitbook versions:install 2.1.0'

COPY start.sh /root/start.sh

CMD ["/root/start.sh"]

EXPOSE 3000
