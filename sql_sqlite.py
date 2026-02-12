"""
SQL AND SQLITE

SQL (Structured Query Language) is used to manage and manipulate relational databases.

SQLite is a self-contained, serverless, zero-configuration database engine
widely used for embedded systems and small applications.
"""

import sqlite3


# ---------- DATABASE CONNECTION ----------
def create_connection():
    connection = sqlite3.connect('sales_data.db')
    return connection


# ---------- CREATE TABLE ----------
def create_table(cursor):
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS sales (
            id INTEGER PRIMARY KEY,
            date TEXT NOT NULL,
            product TEXT NOT NULL,
            sale INTEGER,
            region TEXT
        )
    ''')


# ---------- INSERT DATA ----------
def insert_data(cursor):
    sales_data = [
        ('2023-01-01', 'product1', 100, 'north'),
        ('2023-01-02', 'product2', 200, 'south'),
        ('2023-01-03', 'product3', 300, 'east'),
        ('2023-01-04', 'product4', 400, 'west'),
        ('2023-01-05', 'product5', 500, 'north'),
    ]

    cursor.executemany('''
        INSERT INTO sales (date, product, sale, region)
        VALUES (?, ?, ?, ?)
    ''', sales_data)


# ---------- FETCH DATA ----------
def fetch_data(cursor):
    cursor.execute('SELECT * FROM sales')
    rows = cursor.fetchall()

    print("\nSales Data:\n")
    for row in rows:
        print(row)


# ---------- MAIN FUNCTION ----------
def main():
    connection = create_connection()
    cursor = connection.cursor()

    create_table(cursor)
    insert_data(cursor)

    connection.commit()
    fetch_data(cursor)

    cursor.close()
    connection.close()


# ---------- RUN PROGRAM ----------
if __name__ == "__main__":
    main()
