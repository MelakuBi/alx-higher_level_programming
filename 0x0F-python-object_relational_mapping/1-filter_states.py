#!/usr/bin/python3
''' script that lists all states with a name starting '''
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
        query = """
        SELECT * FROM states WHERE name LIKE BINARY 'N%' ORDER BY id ASC
        """
        cur.execute(query)
        rslt = .fetchall()
'''
    except MySQLdb.Error:
        try:
            rtn = ("MySQLdb Error")
        except IndexError:
            rtn = ("MySQLdb Error - IndexError")
'''
    for i in rtn:
        print(i)
    cur.close()
    conn.close()
