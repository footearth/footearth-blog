#!/bin/bash

app_home='/root/footearth-blog'

git clone https://github.com/footearth/footearth-blog.git
cd ${app_home}

/bin/bash /root/.nvm/nvm.sh
/bin/bash -l -c 'cnpm install'
/bin/bash -l -c 'npm run clean'
/bin/bash -l -c 'npm run build'
/bin/bash -l -c 'npm restart'

while true
do
  sleep 1d
done
