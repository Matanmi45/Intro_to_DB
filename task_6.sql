import mysql.connector
mydb = CREATE DATABASE IF NOT EXISTS alx_book_store;

mydb = try:
          mysql.connector.connect(
          host="localhost",
          user="yourusername",
          password="yourpassword",
          database="mydb")
          print("Database 'alx_book_store' created successfully!")
       except:
          print("connection not established

mycursor = mydb.cursor()

mycursor.execute("""
   CREATE TABLE IF NOT EXISTS Books (
   book_id INT PRIMARY KEY
   title VARCHAR(130)
   FOREIGN KEY (author_id) REFERENCES Authors(author_id)
   price DOUBLE
   publication_date DATE
);
"""
)

mycursor.execute("""
   CREATE TABLE IF NOT EXISTS Authors (
   author_id INT PRIMARY KEY
   author_name VARCHAR(215)
);
"""
)

mycursor.execute("""
   CREATE TABLE IF NOT EXISTS Customers (
   customer_id INT PRIMARY KEY
   customer_name VARCHAR(215)
   email VARCHAR(215)
   address TEXT
);
"""
)

mycursor.execute("""
  CREATE TABLE IF NOT EXISTS Orders(
  order_id INT PRIMARY KEY
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
  order_date DATE
);
"""
)

mycursor.execute("""
  CREATE TABLE IF NOT EXISTS Order_Details(
   orderdetail_id INT PRIMARY KEY
   FOREIGN KEY (order_id) REFERENCES Orders (order_id)
   FOREIGN KEY (book_id) REFERENCES Books(book_id)
   quantity DOUBLE
);
"""
)
sql = "INSERT INTO customers (customer_name, email, address) VALUES (%s, %s)"
val = [("Cole Baidoo", "cbaidoo@sandtech.com", "123 Happiness Ave"), ("Blessing Malik". "bmalik@sandtech.com", "124 Happiness  Ave."),
("Obed Ehoneah". "eobed@sandtech.com", "125 Happiness  Ave."),
("Nehemial Kamolu". "nkamolu@sandtech.com", "126 Happiness  Ave."),]



mycursor.execute( sql, val, "TABLE_SCHEMA = 'alx_book_store'")
mydb.commit()
