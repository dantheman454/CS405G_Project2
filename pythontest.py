import mysql.connector

from mysql.connector import Error


def create_connection(host_name, user_name, user_password):

    connection = None

    try:

        connection = mysql.connector.connect(

            host=host_name,

            user=user_name,

            passwd=user_password

        )

        print("Connection to MySQL DB successful")

    except Error as e:

        print(f"The error '{e}' occurred")


    return connection
    

def execute_query(connection):

    cursor = connection.cursor()

    try:
        query1 = "use cst297;"
        cursor.execute(query1)
        query2 = "SELECT AGENTS.name, ADDRESS.PRIMARY,ADDRESS.SECONDARY,ADDRESS.city,ADDRESS.state,ADDRESS.zip FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.NewFlag = 0;"
        cursor.execute(query2)
        result1 = cursor.fetchall();
        print("results:");
        for row in result1:
	    name, primary_address, secondary_address, city, state, zip_code = row
	    print("---------------------------------")
            print(f"{name}")
            print(f"{primary_address}, {secondary_address}")
            print(f"{city}, {state} {zip_code}")
            print("\n----------------------------------")
            print(f"Name: {name}")
            print(f"Address: {primary_address}, {secondary_address}, {city}, {state}, {zip_code}")
            print("\nIt is great to meet you again! Your favorite food delivery family is growing. Looks like you have already met some of our now expanded family. We want you to know that you will now get the same great service from our newly added drivers!")
            print("\nLooking forward to serving you again!")
	    print("---------------------------------\n")
        

        print("Query executed successfully")

    except Error as e:

        print(f"The error '{e}' occurred") 

password = input("Please enter the password for the mariadb database: ");
database = input("Please enter the database you wish to connect to: ");
show_tables = """
use lrry223;
"""
select_address = """
SHOW TABLES;
"""
connection = create_connection("mysql.cs.uky.edu", database, password)
if connection is not None:
    execute_query(connection)
    connection.close()
