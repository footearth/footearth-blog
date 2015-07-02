#!/bin/bash

app='/root/footearth-blog/bin/gitbook.pm2.json'

/bin/bash /root/.nvm/nvm.sh
/bin/bash -l -c 'git clone https://github.com/footearth/footearth-blog.git'
/bin/bash -l -c 'cnpm install'
/bin/bash -l -c 'npm run clean'
/bin/bash -l -c 'npm run build'
/bin/bash -l -c 'pm2 dump'
/bin/bash -l -c "pm2 startOrRestart ${app}"

while true
do
  sleep 1d
done
