# Working with multiple inputs and currency can introduce
# some tricky precision issues.
# Create a simple self-checkout system. Prompt for the prices and quantities of three items. Calculate the subtotal of the items. Then calculate the tax using a tax rate of 5.5%. Print out the line items with the quantity and total, and then print out the subtotal, tax amount, and total.
# Example Output
#        Enter the price of item 1: 25
#        Enter the quantity of item 1: 2
#        Enter the price of item 2: 10
#        Enter the quantity of item 2: 1
#        Enter the price of item 3: 4
#        Enter the quantity of item 3: 1
#        Subtotal: $64.00
#        Tax: $3.52
#        Total: $67.52
# Constraints
# • Keep the input, processing, and output parts of your program separate. Collect the input, then do the math operations and string building, and then print out the output.
# • Be sure you explicitly convert input to numerical data before doing any calculations.

# pseudocode:
#
# prompt: Enter the price of item 1:
# store price
#
# prompt: Enter the quantity of item 1:
# store quantity
#
# prompt: Enter the price of item 2:
# store price
#
# prompt: Enter the quantity of item 2:
# store quantity
#
# prompt: Enter the price of item 3:
# store price
#
# prompt: Enter the quantity of item 3:
# store quantity
#
# check inputs are valid: is a number not a string of characters/letters, a 0 in a string
# #boolean
#
# calculates the subtotal of item 1(price_of_item_1, quantity_of_1)
# price_of_item_1 * quantity_of_1
#
# calculates the subtotal of item 2 (price_of_item_2, quantity_of_2)
# price_of_item_2 * quantity_of_2
#
# calculates the subtotal of item 3 (price_of_item_3, quantity_of_3)
# price_of_item_3 * quantity_of_3
#
# calculates_total_sub_total
# calculates the subtotal of item 1 + calculates the subtotal of item 2 + calculates the subtotal of item 3
# rounds to 2 decimal places
#
# calculates_tax(total_sub_total)
# turn total_sub_total into a float to ensure division is correct
# 1% = total_sub_total / 100
# 5.5% = (1% * 5.5)
# rounds to 2 decimal places
#
# calculates_total(sub_total, tax)
# sub_total + tax
# rounds to 2 decimal places
#
# main programme
# adds all programmes together & runs them
