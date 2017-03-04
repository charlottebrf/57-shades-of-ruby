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
#   people = number_of_people()
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

def number_of_people
  puts "How many people are there?"
  gets.chomp
end

def number_of_pizzas
  puts "How many pizzas are there?"
  gets.chomp
end

def main #how do i check this?
  people = number_of_people()
  pizzas = number_of_pizzas
  main_programme(people, pizzas)
end

def contains_digits?(str)
  if str =~ /^\d+$/
    true
  else
    false
  end
end


def convert_to_number(str)
  str.to_i
end

def is_an_integer?(num)
  if num.integer?
    true
  else
    false
  end
end


def confirms_people_and_pizzas(people, pizzas)
  "#{people} people with #{pizzas} pizzas"
end

def converts_odd_to_even(people)
  if people.odd?
    people + 1 #unsure this is correct logic?
  else
    people
  end
end


SLICES = 8

def calculates_total_pizza_slices(pizzas)
  total_slices = pizzas * SLICES
  total_slices
end

def calculates_number_of_pizza_slices_per_person(people, pizzas)
  calculates_total_pizza_slices(pizzas) / people #round -rem / div
end

def calculates_number_of_left_over_slices(people, pizzas)
  remainder = calculates_number_of_pizza_slices_per_person(people, pizzas) * people
  calculates_total_pizza_slices(pizzas) - remainder
end

def displays_number_of_left_over_slices(left_over_slices)
  "There are #{left_over_slices} leftover pieces."
end

# def gives_error_message(people, pizzas)
#not happy path! If people enter a 0, or flots or strings od letters/ characters etc
# end



RSpec.describe "evenly divides people between people for a pizza party" do
  it "returns true if the string contains digits" do
    expect(contains_digits?("123")).to eq (true)
  end
  it "returns false if the string contains letters or characters" do
    expect(contains_digits?("abc")).to eq (false)
  end
  it "converts a string to a number" do
    expect(convert_to_number("12")).to eq (12)
  end
  it "returns true if number is an integer" do
    expect(is_an_integer?(3)).to eq (true)
  end
  it "returns false if number is a float" do
    expect(is_an_integer?(1.1)).to eq (false)
  end
  it "confirms number of people and pizzas" do
    expect(confirms_people_and_pizzas(4, 2)).to eq ("4 people with 2 pizzas")
  end
  it "converts an odd number to an even number " do
    expect(converts_odd_to_even(7)).to eq (8)
  end
  it "returns an even number" do
    expect(converts_odd_to_even(8)).to eq (8)
  end
  it "calculates total number of pizza slices for given number of pizzas" do
    expect(calculates_total_pizza_slices(2)).to eq (16)
  end
  it "calculates the number of pizza slices for each person" do
    expect(calculates_number_of_pizza_slices_per_person(8, 2)).to eq (2)
  end
  it "calculates the number of left over slices for an even number of people" do
    expect(calculates_number_of_left_over_slices(8, 2)).to eq (0)
  end
  # it "calculates the number of left over slices for an odd number of people" do
  #   expect(calculates_number_of_left_over_slices(9, 2)).to eq (0)
  # end
end

  #use regex rspecc
  #   it "announces the area in metres" do
  #     expect {display_area_in_metres(10)}.to output(/10 square metres/).to_stdout
  #   end
