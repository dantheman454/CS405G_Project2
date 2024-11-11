import mysql.connector

# Database connection details
source_db_config = {
    'user': 'source_user',  # Replace with your source database username
    'password': 'source_password',  # Replace with your source database password
    'host': 'localhost',  # Replace with your source database host
    'database': 'gadi224'
}

destination_db_config = {
    'user': 'destination_user',  # Replace with your destination database username
    'password': 'destination_password',  # Replace with your destination database password
    'host': 'localhost',  # Replace with your destination database host
    'database': 'lrry223'
}

def transfer_addresses():
    source_conn = mysql.connector.connect(**source_db_config)
    destination_conn = mysql.connector.connect(**destination_db_config)

    source_cursor = source_conn.cursor()
    destination_cursor = destination_conn.cursor()

    source_cursor.execute("SELECT unique_id, prefix, first, middle, last, suffix, company_affiliation, street_addr, room_specification, Building_name, city, state, zip_code FROM Addresses")
    addresses = source_cursor.fetchall()

    for address in addresses:
        unique_id, prefix, first, middle, last, suffix, company_affiliation, street_addr, room_specification, Building_name, city, state, zip_code = address
        name = f"{prefix} {first} {middle} {last} {suffix} {company_affiliation}".strip()
        full_address = f"{street_addr} {room_specification} {Building_name} {city} {state} {zip_code}".strip()

        insert_query = """
            INSERT INTO ADDRESS (primary, secondary, zip, city, state, agentID, BusinessName, addrID)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        destination_cursor.execute(insert_query, (street_addr, room_specification, zip_code, city, state, unique_id, company_affiliation, unique_id))

    destination_conn.commit()
    source_cursor.close()
    destination_cursor.close()
    source_conn.close()
    destination_conn.close()

def transfer_phone_numbers():
    source_conn = mysql.connector.connect(**source_db_config)
    destination_conn = mysql.connector.connect(**destination_db_config)

    source_cursor = source_conn.cursor()
    destination_cursor = destination_conn.cursor()

    source_cursor.execute("SELECT person_ID, phone_number FROM Phone_Numbers")
    phone_numbers = source_cursor.fetchall()

    for phone in phone_numbers:
        person_ID, phone_number = phone

        insert_query = """
            INSERT INTO AGENTS (agentID, PhoneNumbers)
            VALUES (%s, %s)
        """
        destination_cursor.execute(insert_query, (person_ID, phone_number))

    destination_conn.commit()
    source_cursor.close()
    destination_cursor.close()
    source_conn.close()
    destination_conn.close()

def transfer_receipts():
    source_conn = mysql.connector.connect(**source_db_config)
    destination_conn = mysql.connector.connect(**destination_db_config)

    source_cursor = source_conn.cursor()
    destination_cursor = destination_conn.cursor()

    source_cursor.execute("SELECT transaction_ID, customer_ID, business_ID, Date, Total_Sale, Num_Items, H_Priced_Item, L_Priced_Item FROM Receipts")
    receipts = source_cursor.fetchall()

    for receipt in receipts:
        transaction_ID, customer_ID, business_ID, date, total_sale, num_items, h_priced_item, l_priced_item = receipt

        insert_query = """
            INSERT INTO RECEIPTS (receiptID, sellerID, buyerID, date, Total Sale, Number_of_Items, HighestItemPrice)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """
        destination_cursor.execute(insert_query, (transaction_ID, business_ID, customer_ID, date, total_sale, num_items, h_priced_item))

    destination_conn.commit()
    source_cursor.close()
    destination_cursor.close()
    source_conn.close()
    destination_conn.close()

if __name__ == "__main__":
    transfer_addresses()
    transfer_phone_numbers()
    transfer_receipts()
    print("Data transfer completed successfully.")
