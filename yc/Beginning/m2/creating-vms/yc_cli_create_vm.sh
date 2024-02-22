#!/usr/bin/bash
yc compute instance create zabbix-db \
	--metadata-from-file user-data=./metadata-file.cfg \
	--create-boot-disk size=30,image-id=fd801iv1gjj2mbvjolim \
	--cores 4 \
	--memory 4GB \
	--service-account-id ajee9im8rf01mt4p43r1\
	--description "Сервер базы данных PostgreSQL для Zabbix, созданный с помощью YC CLI" \
	--network-interface subnet-name=yc-practice-public-subnet,nat-ip-version=ipv4 \
	--metadata ssh-keys="kiryu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYrLoHeHmlH53BC8nQ9faflI/H1yeRHbTEnRESxcjcIgs280MmzrNP94UUBDqpDCr83Bhi7yaW0fNVhJid7NTtMoWXzj8tKRnQCqkDDYvZkGR9RYyZma0haaBE5KARM46y7iBE+Tmhw5N0nX48P8iFLvsvxXLrkbFNxWFf4FWmcMLoeFrltuHU3yVIyOrmdCSJW+WfzmYK0BXKf4yBlNQddafEkrlury3yEWGEl1V5CHz5a70t1mBb+6VH56UFbdMeqNYn/3fzbNkN5vE/e41Kp8onjNV+40kwZAw+gjdEi3ZFOqHLWcshAAmo0yVlULyEMjCURZKpPyXlZRVn3utraifYiGEege6pHbFFzVCjz+9usHWXkYMaXDWK86LKI8Jh1VuXMEotzv5O8/LngJO6RVvQAl4cCtdWoA5GP77/s+sLu/Xg7cUJhopyLHO6X2aIJSuTFyUtHDVrLDYEK97D5NSQYTd3f5OtDtEhTm34yxaSwvuXD+IybwJ5hjMGDws= kiryu@kiryu-UPC"
