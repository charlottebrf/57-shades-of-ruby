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

# def contains_floats?(num)
#   if num % num == 0 #double check my assertions on how to check for a float
#     true
#   else
#     false
#   end
# end

def confirms_people_and_pizzas(people,pizzas)
  puts "#{number_of_people} with #{number_of_pizzas}"
end
#
# confirm number of people & pizzas
# puts "#{number_of_people} with #{number_of_pizzas}"

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
   expect(contains_floats?(3)).to eq (true)
 end
 # it "returns false if number is a float" do
 #   expect(contains_floats?(1.1)).to eq (false)
 # end
 # it "confirms number of people and pizzas" do
 #   expect(confirms_people_and_pizzas)
 # end #use regex rspecc
 #   it "announces the area in metres" do
 #     expect {display_area_in_metres(10)}.to output(/10 square metres/).to_stdout
 #   end

end
#   it "announces the area in feet" do
#     expect {display_area_in_feet(10) }.to output(/10 square feet/).to_stdout
#   end
#   it "announces the area in metres" do
#     expect {display_area_in_metres(10)}.to output(/10 square metres/).to_stdout
#   end
#   it "confirms the dimensions" do
#     expect {confirms_dimensions(10, 5)}.to output(/10 feet by 5 feet/).to_stdout
#   end
#   it "returns true if the string contains a digit in the range 0-9" do
#     expect(contains_digit?("3")).to eq (true)
#   end
