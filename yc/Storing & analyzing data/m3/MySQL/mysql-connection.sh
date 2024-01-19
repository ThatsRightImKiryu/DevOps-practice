#!/usr/bin/bash

# Creating certificates
mkdir -p ~/.mysql && \
wget "https://storage.yandexcloud.net/cloud-certs/CA.pem" && \
	--output-document= ~/.mysql/root.crt && \
chmod 0600 ~/.mysql/root.crt

# Downloading mysql client app for connection
sudo apt install -y mysql-client


# Connection
mysql --host=rc1b-npfuzry814nwnpxe.mdb.yandexcloud.net \
	--port=3306 \
	--ssl-ca=~/.mysql/root.crt \
	--ssl-mode=VERIFY_IDENTITY \
	--user=user \
	--password \
	yc-mysql-db1  < sql_query.sql




