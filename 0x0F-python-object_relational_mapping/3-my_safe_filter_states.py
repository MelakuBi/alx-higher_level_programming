#!/usr/bin/python3
''' write one script that is safe from MySQL injections '''
from sys import argv
import MySQLdb
if __name__ == "__main__":
	db = MySQLdb.connect(
        host="localhost",
        port=3306,
        user=argv[1],
        passwd=argv[2],
        db=argv[3],
        charset="utf8")
    cur = db.cursor()
    try:
        search = argv[4]
        query = "
        SELECT * FROM states WHERE name LIKE BINARY %s ORDER BY id ASC
        "
        cur.execute(query, (search,))
        rslt = cur.fetchall()
    except MySQLdb.Error:
        try:
            rslt = ("MySQLdb Error")
        except IndexError:
            rslt = ("MySQLdb Error - IndexError")
    for i in rslt:
        print(i)
    cur.close()
    db.close()
