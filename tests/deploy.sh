#!/bin/bash

if [ "$#" -lt 2 ]; then
  echo .
  echo ". Usage: $0 [HOST_APP] [HOST_DB]"
  echo .
  exit 1
fi

HOST_APP=$1
HOST_DB=$2

INI_PRODUCTION=php/config.ini.production

echo "[db]" > ${INI_PRODUCTION}
echo "db_host = ${HOST_DB}" >> ${INI_PRODUCTION}

cd php
ln -sf config.ini.production config.ini
cd ..

zip -r app.zip db php

cd php
ln -sf config.ini.local config.ini
cd ..

scp -i .private/aws/keypair01.pem app.zip ec2-user@${HOST_APP}:~/
rm app.zip

