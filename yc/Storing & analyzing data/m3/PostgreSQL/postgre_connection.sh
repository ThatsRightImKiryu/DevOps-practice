#!/usr/bin/bash

if [ $# -eq 0 ]; then
	sql_file="sql_query.sql"
else
	sql_file=$1
fi


if [ $1=="run" ]; then
psql    "host=rc1b-bxgarpq3m5a18m7y.mdb.yandexcloud.net \
	port=6432 \
	sslmode=verify-full \
	dbname=db1 \
	user=user \
	target_session_attrs=read-write" \

else

psql    "host=rc1b-bxgarpq3m5a18m7y.mdb.yandexcloud.net \
	port=6432 \
	sslmode=verify-full \
	dbname=db1 \
	user=user \
	target_session_attrs=read-write" \
	-f $sql_file \
	-v login="$2"
fi
