#!/usr/bin/bash

if [ $# -eq 0 ]; then
	sql_file="sql_query.sql"
else
	sql_file=$1
fi


if [ $1=="run" ]; then
psql    "host=rc1b-t9vfa7mrcdquy0qc.mdb.yandexcloud.net \
	port=6432 \
	sslmode=verify-full \
	dbname=grey-castle \
	user=user \
	target_session_attrs=read-write" \

else

psql "host=rc1b-t9vfa7mrcdquy0qc.mdb.yandexcloud.net \
    port=6432 \
    sslmode=verify-full \
    dbname=grey-castle \
    user=user \
    target_session_attrs=read-write \
	-f $sql_file" \
	-v login="$2"
fi
