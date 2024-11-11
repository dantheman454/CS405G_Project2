import mysql.connector

def connect_to_database(db_name):
    return mysql.connector.connect(
        host="localhost",
        user="your_username",
        password="your_password",
        database=db_name
    )

def fetch_data_from_table(cursor, table_name):
    cursor.execute(f"SELECT * FROM {table_name}")
    return cursor.fetchall(), cursor.column_names

def insert_data(cursor, data, columns, table_name):
    placeholders = ', '.join(['%s'] * len(columns))
    columns = ', '.join(columns)
    insert_query = f"INSERT INTO {table_name} ({columns}) VALUES ({placeholders})"
    cursor.executemany(insert_query, data)

def merge_databases():
    # Connect to each database
    db1 = connect_to_database("lrry223")
    db2 = connect_to_database("dfr241")
    unified_db = connect_to_database("unified_db")  # Unified database

    db1_cursor = db1.cursor()
    db2_cursor = db2.cursor()
    unified_cursor = unified_db.cursor()

    # List of tables to merge from each database
    tables_to_merge = ["ADDRESS", "AGENTS", "RECEIPTS", "customers", "participants"]

    for table in tables_to_merge:
        # Fetch data from the first database
        data1, columns1 = fetch_data_from_table(db1_cursor, table)
        # Fetch data from the second database if the table exists there
        try:
            data2, columns2 = fetch_data_from_table(db2_cursor, table)
        except mysql.connector.Error:
            data2, columns2 = [], columns1  # Skip if table doesn't exist in db2

        # Combine data from both databases
        all_data = data1 + data2

        # Insert combined data into the unified database
        insert_data(unified_cursor, all_data, columns1, table)

    # Commit the changes to the unified database
    unified_db.commit()

    # Close all database connections
    db1_cursor.close()
    db2_cursor.close()
    unified_cursor.close()
    db1.close()
    db2.close()
    unified_db.close()

if __name__ == "__main__":
    merge_databases()
