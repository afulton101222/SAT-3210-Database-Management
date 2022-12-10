# Import the mysql.connector module
import datetime
import mysql.connector
from mysql.connector import Error

database = "EconoFoods"
user_name = input('Please Enter your User ID:')
password = input('Please Enter Your Password:')
try:
    # Create a connection to the EconoFoods database
    cnx = mysql.connector.connect(host='localhost', database=database, user=user_name, password=password)
    if cnx.is_connected():
        # Create a cursor
        db_Info = cnx.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = cnx.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)
        cursor = cnx.cursor()


        #aquire current date and format correctly
       # when = datetime.now()
       # when = when.strftime('%m%d%y')

        #Get avaliable order ID
        query = 'SELECT MAX(order_id) FROM orders'
        cursor.execute(query)
        lastOrderId = cursor.fetchone() [0]
        avaliabileOrderId = lastOrderId + 1 if lastOrderId else 1



        # Ask the user for their user ID and password
        print("Enter your user ID:")
        user_id = input()
        print("Enter your password:")
        password = input()

        # Retrieve the role of the user with the given user ID and password
        query = "SELECT Role FROM users WHERE user_id = %s AND password = %s"



        # Execute the query, passing in the user ID and password as parameters
        cursor.execute(query, (user_id, password))

        # Store the result in a variable
        result = cursor.fetchone()
        # Check the user's role
        if result[0] == "Customer":
            # Insert a new order into the orders table
            query = "INSERT INTO orders (order_time, total, user_id) VALUES (NOW(), 100, %s)"
            # Execute the query, passing in the user ID as a parameter
            cursor.execute(query, (user_id,))
            # Retrieve the order ID of the newly inserted order
            order_id = avaliabileOrderId

            # Ask the user which items are being ordered
            items = input("Enter the product IDs and quantities of the items being ordered, separated by commas:")
            # Split the input into a list of product IDs and quantities
            product_ids_and_quantities = items.split(",")

            # Insert items into the order_items table
            order_items_query = "INSERT INTO order_items (product_id, order_id, order_quantity, price) VALUES (%s, %s, %s, (SELECT price FROM product WHERE product_id = %s))"

            # Loop through the list of product IDs and quantities
            for product_id_and_quantity in product_ids_and_quantities:
                # Split the product ID and quantity into separate variables
                product_id, quantity = product_id_and_quantity.split(":")

                # Execute the query, passing in the product ID, quantity, and order ID

                # Execute the query, passing in the product ID and order ID as parameters
                cursor.execute(order_items_query, (product_id, order_id, ))

                # Update the quantity of the product in the product table
                product_query = "UPDATE product SET quantity = quantity - 2 WHERE product_id = %s"

                # Execute the query, passing in the product ID as a parameter
                cursor.execute(product_query, (product_id,))

            # Save the changes to the database
            cnx.commit()
        else :
            print ('User Not Authorized')
        # Close the cursor and connection
        cursor.close()
        cnx.close()

except Error as e:
    print("Error while connecting to MySQL", e)