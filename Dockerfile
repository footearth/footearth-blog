FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

# install gitbook-cli
RUN /bin/bash -l -c 'cnpm install -g gitbook-cli'

COPY start.sh /root/start.sh

CMD ["/root/footearth-blog/start.sh"]

EXPOSE 3000
