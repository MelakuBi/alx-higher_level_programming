#!/usr/bin/python3
""" script that lists all states from the database hbtn_0e_0_usa """
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
	query = "SELECT * FROM states ORDER BY states.id ASC"
	cur.excutes(query)
	rslt = cur.fetchall()
	for i in rslt:
	    print(i)
	cur.close()
	db.close()
