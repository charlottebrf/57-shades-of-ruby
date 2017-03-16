# Problem: Have to deal with currency exchange rate, ensure calculations are as precise as possible.
# Write a program that converts currencyConverts euros to US dollars.
# Prompt for the amount of money in euros you have
# Prompt for the current exchange rate of the euros
# Print out the the new amount in US dollars using this formula:
#
# amount to(amount in $) = amount from (amount in ¢E) * rate from (current exchange rate in ¢E)
#             ______________________
#         rate to (current exchange rate of $)
#
# Example output:
#
# How many euros are you exchanging? 81
# What is the exchange rate? 137.51
# 81 euros at an exchange rate of 137.51 is 111.38 U.S. dollars
#
# Constraints:
# Ensure that fractions of a cent are rounded up to the next penny
# Use a single output statement
#
# Pseudocode:
# Prompt: How many euros are you exchanging?
# Store euros_amount
# #
# Prompt: What is the exchange rate of the euros?
# Store exchange_rate
#
# main
# store euros
# store exchange_rate
#
# check valid data (euros, exchange rate)
# boolean if not valid
# error message
#
# calculate_exchange_amount
# US_dollars = (euros_amount * exchange_rate_euros) / exchange_rate_dollars
#
#
# display: #{euros} euros at an exchange rate of #{exchange_rate} is #{US_dollars} U.S. dollars
