# Import the mysql.connector module
import datetime
import mysql.connector
from mysql.connector import Error

database = "EconoFoods"
creds = open("password.txt", "r")
lines = creds.readlines()
user_name = lines[0]
password = lines[1]
creds.close()
try:
    # Create a connection to the EconoFoods database
    cnx = mysql.connector.connect(host='localhost', database=database, user=user_name, password=password)
    if cnx.is_connected():
        # Create a cursor
        cursor = cnx.cursor(buffered=True)
        db_Info = cnx.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("You're connected to database: ", record)


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
            order_id = avaliabileOrderId
            query = "INSERT INTO orders (order_id, order_time, total, user_id) VALUES (%s, NOW(), 100, %s)"
            # Execute the query, passing in the user ID and order ID as parameters
            cursor.execute(query, (order_id,user_id))

            # add items user wants to order
            item = ''
            orderTotalPrice = 0
            while True:
                item = input('please enter the product id of the item you would like to order: (type done to end) ')
                if item == 'done':
                    break
                query = 'SELECT quantity FROM product WHERE product_id LIKE %s'
                cursor.execute(query, (item,))
                quantityAvaliable = cursor.fetchone()
                #intquantityAvalaible = int (quantityAvaliable)
                print (quantityAvaliable)

               # query = 'SELECT product_name FROM product WHERE product_id LIKE %s'
               # cursor.execute(query, (item))
               # productName = cursor.fetchone

                orderQuantity = input ('how many would you like to order?')
                
                query = 'SELECT price FROM product WHERE product_id LIKE %s'
                cursor.execute(query, (item,))
                pricePer = cursor.fetchone()

                itemOrderPrice =0
                query = 'INSERT INTO order_items (product_id, order_id, order_quantity, price) VALUES (%s, %s, %s, 0)'
                cursor.execute(query, (item, order_id, orderQuantity))

                orderTotalPrice = 0
                product_query = "UPDATE product SET quantity = quantity - %s WHERE product_id = %s"
                cursor.execute(product_query, (orderQuantity, item))

            # Save the changes to the database
            cnx.commit()
        else :
            print ('User Not Authorized')
        # Close the cursor and connection
        cursor.close()
        cnx.close()

except Error as e:
    print("Error while connecting to MySQL", e)
    cnx.rollback()
    cursor.close()
    cnx.close()