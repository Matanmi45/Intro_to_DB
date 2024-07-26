from getpass import getpass
from mysql.connector import connect, Error

connection = try:
    with connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: "),
    ) as connection:
        print(“Database 'alx_book_store' created successfully!”)
except Error as e:
    print(e)

alx_book_store = CREATE DATABASE alx_book_store;
cursor = connection.cursor()
cursor.execute(alx_book_store)
cursor.close()
connection.close()
