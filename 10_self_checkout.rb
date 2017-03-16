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

#Domain knowledge:
#does it make sense within the code
# create a class that allows me to access price & quantity
#
# within that class create a

#Item: what it should be doing
#Creating Item
#Do math on items

class Item
  def initialize(price, quantity)
    @price = price
    @quantity = quantity
  end

  def subtotal
    (@price * @quantity).round(2)
  end

  Tax = 5.5
  def tax
    ((subtotal() / 100) * Tax).round(2)
  end

  def totals
    (subtotal + tax).round(2)
  end
end


def get_item(number)
  price = price_of_item(number)
  quantity = quantity_of_item(number)
  Item.new(price, quantity)
end

def quantity_of_item(number)
  puts "Enter the quantity of item #{number}:"
  gets.chomp.to_f
end

def price_of_item(number)
  puts "Enter the price of item #{number}:"
  gets.chomp.to_f
end


def main
  item1 = get_item(1)
  item2 = get_item(2)
  item3 = get_item(3)

  subtotal = subtotal( [item1, item2, item3] )
  displays_subtotal(subtotal)
  tax = tax( [item1, item2, item3] )
  displays_tax(tax)
  totals = totals( [item1, item2, item3] )
  displays_total(totals)
end

def subtotal(items)
  items.map do |item|
    subtotal = item.subtotal
  end
  puts subtotal
end

def tax(items)
  items.map do |item|
    item.tax
  end
end

def totals(items)
  items.map do |item|
    item.totals
  end
end

def displays_subtotal(subtotal)
  puts "Subtotal: $#{subtotal}"
end

def displays_tax(tax)
  puts "Tax: $#{tax}"
end

def displays_total(totals)
  puts "Total: $#{totals}"
end

main


RSpec.describe "self checkout programme" do
  it "calculates subtotal of item" do
    item1 = Item.new(3, 4)
    expect(item1.subtotal).to eq 12
  end
  it "rounds the subtotal to 2 decimal places" do
    item1 = Item.new(1.666, 1)
    item2 = Item.new(2, 1)
    item3 = Item.new(3, 2)
    expect(item1.subtotal(item)).to eq 9.67
  end
  it "calculates 5.5% of tax according to sub total" do
    item1 = Item.new(10,1)
    expect(item1.tax).to eq 0.55
  end
  it "calculates total of subtotal added to the tax" do
    item2 = Item.new(55, 1)
    expect(item2.totals).to eq 58.03
  end
  it "displays the subtotal" do
    expect{ displays_subtotal(55) }.to output(/Subtotal: \$55/).to_stdout
  end
  # it "re" do
  #   expect{ main_programme("5", "20") }.to output(/purchase 1 gallon of paint to cover 100 /).to_stdout
  # end
end
