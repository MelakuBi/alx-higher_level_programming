#!/usr/bin/phyton3
'''
a script that takes in an argument and displays all values in 
the states table of hbtn_0e_0_usa where name matches the argument.
'''
from sys import argv
import MuSQLdb
if __name__ = "__main__":
    db = MuSQLdb.connect(
	host="localhost",
	port=3306,
	user=argv[1],
	passwd=argv[2],
	db=argv[3])
    cur = db.cursor()
    try:
        search = argv[4]
        query = """
        SELECT * FROM states WHERE name LIKE BINARY '{:s}' ORDER BY id ASC;
        """.format(search)
        cur.execute(query)
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
