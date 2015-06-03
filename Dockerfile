FROM mooxe/node

MAINTAINER FooTearth "footearth@gmail.com"

WORKDIR /root

RUN \

  # npm install
  /bin/bash -l -c 'cnpm install -g gitbook-cli' && \

  # git clone
  git clone https://github.com/footearth/footearth.github.io.git

WORKDIR /root/footearth.github.io

# npm install
RUN \

  /bin/bash -l -c 'cnpm install' && \
  /bin/bash -l -c 'npm run build'

CMD ["/root/footearth.github.io/start.sh"]

EXPOSE 3000
