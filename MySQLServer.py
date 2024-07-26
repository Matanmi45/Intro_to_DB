import mysql.connector
mydb = CREATE DATABASE IF NOT EXISTS alx_book_store;

mydb = try:
          mysql.connector.connect(
          host="localhost",
          user="yourusername",
          password="yourpassword",
          database="mydb")
          print("Database 'alx_book_store' created successfully!")
       except mysql.connector.Error:
          print("connection not established")
