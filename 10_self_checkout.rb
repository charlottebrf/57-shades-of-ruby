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
#
# 2 x classes to refactor code?
# class CostAndQuantity
#
#   def initialize(price, quantity)
#     @price = price
#     @quantity = quantity
#   end
#
#   def gets_price(price)
#     puts "Enter the price of item 1:"
#     @price = gets.chomp
#     puts "Enter the price of item 2:"
#     @price = gets.chomp
#     puts "Enter the price of item 3:"
#     @price = gets.chomp
#   end
#
#   def gets_quantity(quantity)
#     puts "Enter the quantity of item 1:"
#     @quantity = gets.chomp
#     puts "Enter the quantity of item 2:"
#     @quantity = gets.chomp
#     puts "Enter the quantity of item 3:"
#     @quantity = gets.chomp
#   end
# #unsure this makes correct use of gets.chomp & @instance variables
# end
#
# class Display
#
#   def initialize(subtotal, tax, total)
#     @subtotal = subtotal
#     @tax = tax
#     @total = total
#   end
#
#   def displays (subtotal, tax, total)
#     puts "Subtotal: $#{subtotal}"
#     puts "Tax: $#{tax}"
#     puts "Total: $#{total}"
#   end
#
# end


def price_of_item_1
  puts "Enter the price of item 1:"
    gets.chomp
end

def quantity_of_item_1
  puts "Enter the quantity of item 1:"
    gets.chomp
end

def price_of_item_2
  puts "Enter the price of item 2:"
    gets.chomp
end

def quantity_of_item_2
  puts "Enter the quantity of item 2:"
    gets.chomp
end

def price_of_item_3
  puts "Enter the price of item 3:"
    gets.chomp
end

def quantity_of_item_3
  puts "Enter the quantity of item 3:"
    gets.chomp
end

def main
  price_1 = price_of_item_1
  quantity_1 = quantity_of_item_1
  price_2 = price_of_item_2
  quantity_2 = quantity_of_item_2
  price_3 = price_of_item_3
  quantity_3 = quantity_of_item_3
  main_programme(price_1, quantity_1, price_2, quantity_2, price_3, quantity_3)
end


def contains_digits?(str)
  if str == "0"
    false
  elsif str =~ /^\d+$/ #adapt regex for a float number /^\d\.\d+$/

    # (([1-9][0-9]*\.?[0-9]*)|(\.[0-9]+))([Ee][+-]?[0-9]+)?
    true
  else
    false
  end
end

def are_valid?(price_1, quantity_1, price_2, quantity_2, price_3, quantity_3)
  if !contains_digits?(price_1) || !contains_digits?(quantity_1) || !contains_digits?(price_2) || !contains_digits?(quantity_2) || !contains_digits?(price_3) || !contains_digits?(quantity_3)
    false
  else
    true
  end
end

def convert_to_number(str)
  str.to_i
end

def subtotal_1(price_1, quantity_1)
  price_1 * quantity_1
end

def subtotal_2(price_2, quantity_2)
  price_2 * quantity_2
end

def subtotal_3(price_3, quantity_3)
  price_3 * quantity_3
end

def subtotal_123(subtotal_1, subtotal_2, subtotal_3)
  subtotal = subtotal_1 + subtotal_2 + subtotal_3
  if subtotal.integer?
    true
    subtotal
  else
  subtotal = subtotal.round(2)
end
end

def calculates_tax(subtotal)
  # turn total_sub_total into a float to ensure division is correct
   ((subtotal / 100) * 5.5).round(2)
end

def calculates_total(subtotal, tax)
  (subtotal + tax).round(2)
end

def displays_subtotal(subtotal)
  puts "Subtotal: $#{subtotal}"
end

def displays_tax(tax)
  puts "Tax: $#{tax}"
end

def displays_total(total)
  puts "Total: $#{total}"
end



RSpec.describe "self checkout programme" do
  it "returns true if string contains digits" do
    expect(contains_digits?("123")).to eq true
  end
  it "returns true if string doesn't contain digits" do
    expect(contains_digits?("&8%4£kg")).to eq false
  end
  it "returns false if any of the strings contain an invalid input" do
    expect(are_valid?("&8%4£kg", "5", "8", "3", "2.0", "9")).to eq false
  end
  it "returns true if the strings contain valid input" do
    expect(are_valid?("14", "5", "8", "3", "2", "9")).to eq true
  end
  it "converts a string to a number" do
    expect(convert_to_number("9")).to eq 9
  end
  it "calculates subtotal of item 1" do
    expect(subtotal_1(3, 4)).to eq 12
  end
  it "calculates subtotal of item 2" do
    expect(subtotal_2(5, 5)).to eq 25
  end
  it "calculates subtotal of item 3" do
    expect(subtotal_3(6, 3)).to eq 18
  end
  it "calculates subtotal of all 3 items" do
    expect(subtotal_123(12, 25, 18)).to eq 55
  end
  it "calculates 5.5% of tax according to sub total" do
    expect(calculates_tax(10.00)).to eq 0.55
    expect(calculates_tax(25.00)).to eq 1.38
    expect(calculates_tax(55.00)).to eq 3.03
  end
  it "calculates total of subtotal added to the tax" do
    expect(calculates_total(55.00, 3.03)).to eq 58.03
  end
  it "displays the subtotal" do
    expect{ displays_subtotal(55) }.to output(/Subtotal: $55 /).to_stdout
  end
  # it "re" do
  #   expect{ main_programme("5", "20") }.to output(/purchase 1 gallon of paint to cover 100 /).to_stdout
  # end
end
