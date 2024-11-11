import mysql.connector

def connect_to_database(host, user, password, database):
    """Connect to the MySQL database."""
    return mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

def fetch_addresses(cursor):
    """Fetch addresses from jast291 database."""
    cursor.execute("SELECT entity_name, entity_id, city, state, zip, street_and_number FROM addresses;")
    return cursor.fetchall()

def fetch_buyers(cursor):
    """Fetch buyers from jast291 database."""
    cursor.execute("SELECT buyer_name, buyer_id, buyer_address FROM buyers;")
    return cursor.fetchall()

def fetch_sellers(cursor):
    """Fetch sellers from jast291 database."""
    cursor.execute("SELECT seller_name, seller_id, seller_address FROM sellers;")
    return cursor.fetchall()

def fetch_receipts(cursor):
    """Fetch receipts from jast291 database."""
    cursor.execute("SELECT receipt_id, seller_name, buyer_name, date, total_sale, num_sold, max_price, min_price FROM receipts;")
    return cursor.fetchall()

def insert_addresses(cursor, addresses):
    """Insert addresses into lrry223 database."""
    insert_query = """
    INSERT INTO ADDRESS (BusinessName, addrID, city, state, zip, primary, secondary)
    VALUES (%s, %s, %s, %s, %s, %s, NULL);
    """
    for address in addresses:
        entity_name, entity_id, city, state, zip_code, street_and_number = address
        cursor.execute(insert_query, (entity_name, entity_id, city, state, zip_code, street_and_number))

def insert_buyers(cursor, buyers):
    """Insert buyers into lrry223 database."""
    insert_query = """
    INSERT INTO AGENTS (agentID, name) 
    VALUES (%s, %s);
    """
    for buyer in buyers:
        buyer_name, buyer_id, buyer_address = buyer
        cursor.execute(insert_query, (buyer_id, buyer_name))

def insert_sellers(cursor, sellers):
    """Insert sellers into lrry223 database."""
    insert_query = """
    INSERT INTO AGENTS (agentID, name) 
    VALUES (%s, %s);
    """
    for seller in sellers:
        seller_name, seller_id, seller_address = seller
        cursor.execute(insert_query, (seller_id, seller_name))

def insert_receipts(cursor, receipts):
    """Insert receipts into lrry223 database."""
    insert_query = """
    INSERT INTO RECEIPTS (receiptID, sellerName, buyerName, date, Total Sale, Number_of_Items, HighestItemPrice, LowestItemPrice)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
    """
    for receipt in receipts:
        receipt_id, seller_name, buyer_name, date, total_sale, num_sold, max_price, min_price = receipt
        cursor.execute(insert_query, (receipt_id, seller_name, buyer_name, date, total_sale, num_sold, max_price, min_price))

def main():
    # Database connection details
    source_db_config = {
        'host': 'your_source_host',
        'user': 'your_source_user',
        'password': 'your_source_password',
        'database': 'jast291'
    }
    
    target_db_config = {
        'host': 'your_target_host',
        'user': 'your_target_user',
        'password': 'your_target_password',
        'database': 'lrry223'
    }

    # Connect to the source and target databases
    source_connection = connect_to_database(**source_db_config)
    target_connection = connect_to_database(**target_db_config)

    source_cursor = source_connection.cursor()
    target_cursor = target_connection.cursor()

    try:
        # Fetch data from source database
        addresses = fetch_addresses(source_cursor)
        buyers = fetch_buyers(source_cursor)
        sellers = fetch_sellers(source_cursor)
        receipts = fetch_receipts(source_cursor)

        # Insert data into target database
        insert_addresses(target_cursor, addresses)
        insert_buyers(target_cursor, buyers)
        insert_sellers(target_cursor, sellers)
        insert_receipts(target_cursor, receipts)

        # Commit the transactions
        target_connection.commit()

    except mysql.connector.Error as err:
        print(f"Error: {err}")
        target_connection.rollback()

    finally:
        # Close all connections
        source_cursor.close()
        target_cursor.close()
        source_connection.close()
        target_connection.close