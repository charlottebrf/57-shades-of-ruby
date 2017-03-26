# Problem: write a simple program to compare the tax on an order amount. The program should prompt for the order amount & the state. If the state is "WI", then the order must be charged 5.5% tax. The program should display the subtotal, tax, and total for Wisconsin residents but display just the total for non-residents.
#
# Example output: - Wisconsin residents
# What is the order amount? 10
# What is the state?
# The subtotal is $10.00.
# The tax is $0.55
# The total is $10.55.
#

# Example output: - non-residents
# What is the order amount? 10
# What is the state? MN
#The total is $10.00

# Constraints:
# -Implement this program using only a simple if statement- don't use an else clause
# -Ensure that all money is rounded up to the nearest cent.
# -Use a single output statement at the end of the program to display the program results.

# Pseudocode:
# Prompts: asks_question(question)
# stores results
#
# checks_state(state)
# if state == WI
#   true
# else
#   false
# end
#
# displays_subtotal(order_amount)
# puts "The subtotal is $order_amount"
#
# Tax = $0.55
# displays_tax
# puts "The tax is Tax"
#
# calculates_total(order_amount)
# order_amount.to_f + Tax
#
# total_to_float(order_amount)
# order_amount.to_f
#
# displays_total(total)
# puts "The total is total"
#
#
# Main Program:
# order_amount = asks_question("What is the order amount"?)
# state = asks_question("What is the state?")
# if checks_state(state) == true
#   displays_subtotal(order_amount)
#   displays_tax
#   total = calculates_total
#   displays_total(total)
# else
#   total = order_amount(order_amount)
#   displays_total(total)
# end
# end

def asks_question(question)
  puts question
  gets.chomp
end

def checks_state(state)
  if state == "WI"
    true
  else
    false
  end
end

def displays_subtotal(order_amount)
  puts "The subtotal is $#{order_amount}"
end

Tax = 0.55
def displays_tax
  puts "The tax is $#{Tax}"
end

def calculates_total(order_amount)
  (order_amount.to_f + Tax).round(1)
end

def rounds_total(total)
  total.round(1)
end

def string_to_float(string)
  string.to_f
end

def displays_total(total)
  puts "The total is $#{total}"
end

def main_program
  order_amount = asks_question("What is the order amount?")
  state = asks_question("What is the state?")
  if checks_state(state) == true
    order_amount = string_to_float(order_amount)
    displays_subtotal(order_amount)
    displays_tax
    total = calculates_total(order_amount)
    displays_total(total)
  else
    total = string_to_float(order_amount)
    total = rounds_total(total)
    displays_total(total)
  end
end

main_program
