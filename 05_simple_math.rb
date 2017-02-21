# Problem: write a program that prompts for two numbers. Print the sum, difference, prdouct, and quotient of those numbers.
#
# Example output:
# What is the first number? 10
# What is the second number? 5
# 10 + 5 = 15
# 10 - 5 = 5
# 10 * 5 = 50
# 10 / 5 = 2
#
# Constraints:
# • Values coming from users will be strings. Ensure you convert these values to numbers before doing the maths.
# • Keep the inputs & outputs separate from the numerical conversions & other processing.
# • Generate a single output statement with line breaks in the appropriate spots.

# Pseudocode:
# prompt "What is the first number?"
# first_number = gets.chomp.to_i
# prompt "What is the second number?"
# second_number = gets.chomp.to_i
# first_number + second_number
# first_number - second_number
# first_number * second_number
# first_number / second_number


def simple_math
  puts "What is the first number"
  first_number = Integer(gets.chomp)
  puts "What is the second number?"
  second_number = Integer(gets.chomp)
  puts first_number + second_number
  puts first_number - second_number
  puts first_number * second_number
  puts first_number / second_number
end

simple_math

# first_number = (gets.chomp).to_i
# first_number = Integer(gets.chomp)


# How do you make tests for gets.chomp cases?
# RSpec.describe "simple math" do
#   it "turns the inputted string to an integer" do
#     expect(simple_math("five")).to eq (5)
#   end
# end
