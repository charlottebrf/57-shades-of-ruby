# Problem: Write a program to evenly describe pizzas.Prompt for the number of people, the number of pizzas, and the number of slices per pizza. Ensure that the number of pieces comes out even. Display the number of pieces of pizza each person should get. If there are leftovers. show the number of leftover pieces.
#
# Example Output:
# How many people? 8
# How many pizzas do you have? 2
#
# 8 people with 2 pizzas
# Each person gets 2 pieces of pizza.
# There are 0 leftover pieces.

# pseudocode:
# number of people
# prompt "How many people?"
# store number of people
#
# number of pizzas
# prompt "How many pizzas do you have?"
# store number of pizzas
#
# Store gets.chomp data for programme
# def main()
#   people = numbger_of_people()
#   pizzas = number_of_pizzas()
#   do_stuff(people, pizzas)
# end
#
# check for digits(n)
# if digits true
# else false
#
# check for integer
# if integer true
# if float false
#
# confirm number of people & pizzas
# puts "#{number_of_people} with #{number_of_pizzas}"
#
# calculates number of slices(number_of_people, number_of_pizzas)
# number_of_people / number_of_pizzas
# *do I use / or %?
# *"Ensure that the number of pieces comes out even"- even number & even division
#
# rounds number of slices(number_of_slices) ?
# calculates number of slices.to_i
# *Double check how to ensure number of slices is rounded to a whole number*
#
# calculates number of left over slices
# *calculates the remainder*
#
# displays the number of left over slices(remainder)
# puts "There are #{remainder} leftover pieces."
#
# do_stuff main programme
# calls methods in correct order to display

def main
  people = number_of_people()
  pizzas = number_of_pizzas
  main_programme(people, pizzas)
end

def main_programme(people, pizzas)
  if are_valid?(people, pizzas) == false
    puts "The number of people or pizzas you entered was incorrect. Please enter them again, ensuring they are whole numbers"
    return
  end
  converted_people = convert_to_number(people)
  converted_pizzas = convert_to_number(pizzas)

  confirms_people_and_pizzas(converted_people, converted_pizzas)

  slice_per_person = calculates_number_of_pizza_slices_per_person(converted_people, converted_pizzas)
  left_over_slices = calculates_number_of_left_over_slices(converted_people, converted_pizzas)

  displays_number_of_slices_per_person(slice_per_person)
  displays_number_of_left_over_slices(left_over_slices)
end

def number_of_people
  puts "How many people are there?"
  gets.chomp
end

def number_of_pizzas
  puts "How many pizzas are there?"
  gets.chomp
end

def are_valid?(people, pizzas)
  if !contains_digits?(people) || !contains_digits?(pizzas)
    false
  else
    true
  end
end

def contains_digits?(str)
  if str == "0"
    false
  elsif str =~ /^\d+$/
    true
  else
    false
  end
end

def convert_to_number(str)
  str.to_i
end

def confirms_people_and_pizzas(people, pizzas)
  puts "#{people} people with #{pizzas} pizzas"
end

SLICES = 8

def calculates_total_pizza_slices(pizzas)
  total_slices = pizzas * SLICES
  total_slices
end

#error message if there's 0
def calculates_number_of_pizza_slices_per_person(people, pizzas)
  slice_per_person = calculates_total_pizza_slices(pizzas) / people
  slice_per_person = slice_per_person.round
  if slice_per_person.even?
    slice_per_person
  else
    slice_per_person - 1
  end
end

def displays_number_of_slices_per_person(slice_per_person)
  puts "Each person gets #{slice_per_person} pieces of pizza."
end

def calculates_number_of_left_over_slices(people, pizzas)
  remainder = calculates_number_of_pizza_slices_per_person(people, pizzas) * people
  calculates_total_pizza_slices(pizzas) - remainder
end

def displays_number_of_left_over_slices(left_over_slices)
  puts "There are #{left_over_slices} leftover pieces."
end

main()


RSpec.describe "evenly divides people between people for a pizza party" do
  it "returns true if the string contains digits" do
    expect(contains_digits?("123")).to eq (true)
  end
  it "returns false if the string is 0" do
    expect(contains_digits?("0")).to eq (false)
  end
  it "returns false if the string contains a float" do
    expect(contains_digits?("1.1")).to eq (false)
  end
  it "returns false if the string contains letters or characters" do
    expect(contains_digits?("abc")).to eq (false)
  end
  it "returns false if either of the strings are not a number" do
    expect(are_valid?(1.1, 1)).to eq (false)
  end
  it "returns false if either of the strings are not a number" do
    expect(are_valid?(1.1, 3.1)).to eq (false)
  end
  it "converts a string to a number" do
    expect(convert_to_number("12")).to eq (12)
  end
  it "confirms number of people and pizzas" do
    expect{ confirms_people_and_pizzas(4, 2) }.to output(/4 people with 2 pizzas/).to_stdout
  end
  it "calculates total number of pizza slices for given number of pizzas" do
    expect(calculates_total_pizza_slices(2)).to eq (16)
  end
  it "calculates number of slices per person for an even number of people" do
    expect(calculates_number_of_pizza_slices_per_person(8, 2)).to eq (2)
  end
  it "calculates the number of slices per person for an odd number of people" do
    expect(calculates_number_of_pizza_slices_per_person(5, 2)).to eq (2)
  end
  it "displays the number of slices per person" do
    expect{ displays_number_of_slices_per_person(2) }.to output(/2 pieces/).to_stdout
  end
  it "calculates the number of left over slices for an even number of people" do
    expect(calculates_number_of_left_over_slices(8, 2)).to eq (0)
  end
  it "calculates the number of left over slices for an odd number of people" do
    expect(calculates_number_of_left_over_slices(5, 2)).to eq (6)
  end
  it "displays the number of slices left over" do
    expect{ displays_number_of_left_over_slices(6) }.to output(/6 leftover/).to_stdout
  end
end
