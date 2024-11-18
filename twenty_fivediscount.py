

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
        query1 = "use dha308;"
        cursor.execute(query1)
        #selects the address of pre-existing customers
        query2 = "SELECT AGENTS.name, ADDRESS.PRIMARY,ADDRESS.SECONDARY,ADDRESS.city,ADDRESS.state,ADDRESS.zip FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.NewFlag = 0";
        cursor.execute(query2)
        #selects information on pre-existing customers whose contact preference is email
        query3 = "SELECT ADDRESS.BusinessName, AGENTS.name,AGENTS.email FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.NewFlag = 0 AND AGENTS.contactPref = 'EMAIL'"
        #selects information on pre-existing customers whose contact preference is TEXT
        cursor.execute(query3)
        result1 = cursor.fetchall();
        for row in result1:
            BusinessName,name,email = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{email}")
            print("25% off")
        query4 ="SELECT ADDRESS.BusinessName, AGENTS.name,AGENTS.PhoneNumbers FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'TEXT' AND AGENTS.NewFlag = 0"
        cursor.execute(query4)
        result2 = cursor.fetchall();
        for row in result2:
            BusinessName,name,PhoneNumber = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{PhoneNumber}")
            print("25% off")
        #selects information on pre-existing customers whose contact preference is ROBOCALL
        query5 = "SELECT ADDRESS.BusinessName, AGENTS.name,AGENTS.PhoneNumbers FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'ROBOCALL' AND AGENTS.NewFlag = 0"
        cursor.execute(query5);
        result3 = cursor.fetchall();
        for row in result3:
            BusinessName,name,PhoneNumbers = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{PhoneNumbers}")
            print("25% off");
        #selects information on pre-existing customers whose contact preference is PHONE
        query6 = "SELECT ADDRESS.BusinessName, AGENTS.name, AGENTS.PhoneNumbers FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'PHONE' AND AGENTS.NewFlag = 0"
        cursor.execute(query6);
        result4 = cursor.fetchall();
        for row in result4:
            BusinessName, name, PhoneNumbers = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{PhoneNumbers}")
            print("25% off")
        #selects information on pre-existing customers whose contact preference is FAX
        query7 = "SELECT ADDRESS.BusinessName, AGENTS.name, AGENTS.PhoneNumbers FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'FAX' AND AGENTS.NewFlag = 0"
        cursor.execute(query7);
        result5 = cursor.fetchall();
        for row in result5:
            BusinessName,name,PhoneNumbers = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{PhoneNumbers}")
            print("25% off");
        #select information on pre-existing customers whose contact preference is DNC
        query8 = "SELECT AGENTS.name FROM AGENTS JOIN ADDRESS ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'DNC' AND AGENTS.NewFlag = 0"
        result6 = cursor.fetchall();
        for row in result6:
            name = row
            print(f"{name}")
            print("25% off")
        cursor.execute(query8);
        #selects information on pre-existing customers whose contact preference is MAIL
        query9 = "SELECT ADDRESS.BusinessName,AGENTS.name,query2 ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'MAIL' AND AGENTS.NewFlag = 0"
        cursor.execute(query9);
        result7 = cursor.fetchall();
        for row in result7:
            BusinessName,name,query2 = row
            print(f"{BusinessName}")
            print(f"{name}")
            print(f"{query2}")
        #selects information on pre-existing customers whose contact preference is ALL
        query10 = "SELECT ADDRESS.BusinessName, AGENTS.name, AGENTS.PhoneNumbers,AGENTS.email,query2 ON AGENTS.agentID = ADDRESS.addrID WHERE AGENTS.contactPref = 'ALL'"
        cursor.execute(query10);
        result8 = cursor.fetchall();
        for row in result8:
            BusinessName,name,PhoneNumbers,email,query2 = row
            for row in result8:
                print(f"{BusinessName}")
                print(f"{name}")
                print(f"{PhoneNumbers}")
                print(f"{email}")
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
execute_query(connection)

