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

#should this be a class? So that we can take the the calculation
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
#round(2)
#
# exchange_rate_dollars
#how do I get this & store it if the exchange rate is changing all the time ? API or something?

# display: #{euros} euros at an exchange rate of #{exchange_rate} is #{US_dollars} U.S. dollars



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
#CurrencyExchanger.new(euros, exchange_rate)

class CurrencyExchanger

  def initialize(euros_amount, euros_exchange_rate, dollars_exchange_rate)
    @euros_amount = euros_amount
    @euros_exchange_rate = euros_exchange_rate
    @dollars_exchange_rate = dollars_exchange_rate
  end

  def calculate_dollars
    (@euros_amount * @euros_exchange_rate / @dollars_exchange_rate).round(2)
  end

  def displays_exchange(calculate_dollars))
    puts "#{@euros_amount} euros at an exchange rate of #{@euros_exchange_rate} is #{calculate_dollars} U.S. dollars"
  end

end

def gets_euros
  puts "How many euros are you exchanging?"
  euros_amount = gets.chomp
end

def gets_euros_exchange_rate
  puts "What is the exchange rate of the euros??"
  euros_amount = gets.chomp
end

def data_validation
  #regex
  #boolean
end

def exchange_rate_dollars
  dollars_exchange_rate = gets.chomp
  #how do I get this & store it if the exchange rate is changing all the time ? API or something?
end



# display: #{euros} euros at an exchange rate of #{exchange_rate} is #{US_dollars} U.S. dollars
