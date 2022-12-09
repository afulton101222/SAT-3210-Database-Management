# Import the mysql.connector module
import mysql.connector

# Create a connection to the EconoFoods database
cnx = mysql.connector.connect(
    host="localhost",
    user="username",
    password="password",
    database="EconoFoods"
)

# Create a cursor
cursor = cnx.cursor()

# Ask the user for their user ID and password
print("Enter your user ID:")
user_id = input()

print("Enter your password:")
password = input()

# Retrieve the role of the user with the given user ID and password
query = """
SELECT Role
FROM users
WHERE user_id = %s AND password = %s
"""

# Execute the query, passing in the user ID and password as parameters
cursor.execute(query, (user_id, password))

# Store the result in a variable
result = cursor.fetchone()

# Check the user's role
if result[0] == "Customer":
    # Insert a new order into the orders table
    query = """
    INSERT INTO orders (order_time, total, user_id)
    VALUES (NOW(), 100, 'abc123')
    """

    # Execute the query
    cursor.execute(query)

    # Retrieve the order ID of the newly inserted order
    order_id = cursor.lastrowid

    # Ask the user which items are being ordered
    print("Enter the product IDs of the items being ordered, separated by commas:")
    items = input()

    # Split the input into a list of product IDs
    product_ids = items.split(",")

    # Insert items into the order_items table
    order_items_query = """
    INSERT INTO order_items (product_id, order_id, order_quantity, price)
    VALUES (%s, %s, 2, 50)
    """

    # Loop through the list of product IDs
    for product_id in product_ids:
        # Execute the query, passing in the product ID and order ID as parameters
        cursor.execute(order_items_query, (product_id, order_id))

        # Update the quantity of the product in the product table
        product_query = """
        UPDATE product
        SET quantity = quantity - 2
        WHERE product_id = %s
        """

        # Execute the query, passing in the product ID as a parameter
        cursor.execute(product_query, (product_id,))

    # Save the changes to the database
    cnx.commit()

# Close the cursor and connection
cursor.close()
cnx.close()
