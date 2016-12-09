import mysql.connector
import MySQLdb
import os
import sys
import argparse
import getpass

parser = argparse.ArgumentParser()
parser.add_argument("--host", help="MySQL host")
parser.add_argument("--port",help="MySQL port")
parser.add_argument("--user",help="MySQL user")
parser.add_argument("--passwd",help="MySQL password")
parser.add_argument("--db",help="MySQL database")
args = parser.parse_args()
if(not (args.host and args.port and args.user and args.passwd and args.db)):
    print('Missing arguments, exiting.')
    sys.exit()
mysql_host = args.host
mysql_port = args.port
mysql_user = args.user
mysql_passwd = args.passwd
mysql_db = args.db

dbm = mysql.connector.connect(host=mysql_host,
                              port=mysql_port,
                              user=mysql_user,
                              passwd=mysql_passwd)
cursor = dbm.cursor()
data_base_creation_query = "CREATE DATABASE IF NOT EXISTS " + args.db + ";"

cursor.execute(data_base_creation_query)
cursor.close()

"""Create database tables"""
table_creation_queries_file = 'cis_451_final_project_table_creation_queries_v1-1.txt'
table_creation_queries = open(table_creation_queries_file, 'r')

for table_creation_query in table_creation_queries:
    dbm = mysql.connector.connect(host=mysql_host,
                                  port=mysql_port,
                                  user=mysql_user,
                                  passwd=mysql_passwd,
                                  db=mysql_db)
    print(table_creation_query)
    cursor = dbm.cursor()
    cursor.execute(table_creation_query)
    cursor.close()

table_creation_queries.close()

"""Add foreign key constraints to tables"""
add_foreign_key_constraint_queries_file = "cis_451_final_project_table_add_foreign_key_constraints_v1-1.txt"
add_foreign_key_constraint_queries = open(add_foreign_key_constraint_queries_file, 'r')

for add_foreign_key_constraint_query in add_foreign_key_constraint_queries:
    dbm = mysql.connector.connect(host=mysql_host,
                                  port=mysql_port,
                                  user=mysql_user,
                                  passwd=mysql_passwd,
                                  db=mysql_db)
    print(add_foreign_key_constraint_query)
    cursor = dbm.cursor()
    cursor.execute(add_foreign_key_constraint_query)
    cursor.close()
    
add_foreign_key_constraint_queries.close()


