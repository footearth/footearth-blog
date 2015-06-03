FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

RUN \

  # npm install
  /bin/bash -l -c 'cnpm install -g gitbook-cli' && \

  # git clone
  git clone https://github.com/footearth/footearth-blog.git

WORKDIR /root/footearth-blog

# npm install
RUN \

  /bin/bash -l -c 'cnpm install' && \
  /bin/bash -l -c 'npm run build'

CMD ["/root/footearth-blog/start.sh"]

EXPOSE 3000
