import MySQLdb

conn = MySQLdb.connect(
	host="rc1b-npfuzry814nwnpxe.mdb.yandexcloud.net",
	port=3306,
	db="yc-mysql-db1",
	user="user",
	passwd="useruser",
	ssl={"ca": "~/.mysql/root.crt"})

cur = conn.cursor()
cur.execute("CREATE TABLE IF NOT EXISTS Users(\
		user_id INT AUTO_INCREMENT PRIMARY KEY,\
		login VARCHAR(20) CHARACTER SET utf8mb4 NOT NULL)\
		ENGINE=INNODB;")


print("Input login of new user:")
login = input()

cur.execute("INSERT INTO Users (login) VALUES(%s)", [login])
conn.commit()

cur.execute("SELECT * FROM Users;")
print(cur.fetchone()[0])

cur.execute("DELETE FROM Users WHERE LENGTH(login)<=3")
conn.commit()

conn.close()

