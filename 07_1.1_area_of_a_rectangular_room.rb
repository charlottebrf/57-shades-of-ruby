# E.g.:
# What is the length of the room in feet? 15
# What is the width of the room in feet? 20
# You entered dimensions of 15 feet by 20 feet.
# The area is
# 300 square feet
# 27.871 square meters
#
# Constraints:
# -Keep the calculations separate from the output.
# -Use a constant to hold the conversion factor.

# pseudocode:
# get measurement data
# prompt "What is the length of the room in feet?"
# input length = gets.chomp
# validate measurement data
# prompt "What is the width of the room in feet?"
# input width = gets.chomp
# validate measurement data in 3 methods:
# 1. Does the string contain a digit?
# 2. Yes => convert the string to a digit
# extract digit
# 3. Use data in maths exercises
# 4. No- error message

# Success message if no errors
# print "You entered dimensions of #{length} feet by #{width} feet."
# Error handling message if format is not acceptable
# print "blah blah What is the length of t"

# (STRING)         contains digitis?         Integer(n)    math
# GET DATA ---> CHECK IF CAN BE CONVERTED --> CONVERT ---> USE
#   ^                 |
#   |_________________|

def get_length_of_room()
  puts "What is the length of the room in feet?"
  gets.chomp
end

def get_width_of_room()
  puts "What is the width of the room in feet?"
  gets.chomp
end

def main()
  length = get_length_of_room()
  width = get_width_of_room()
  do_stuff(length, width)
end

def confirms_dimensions(length, width)
  puts "You entered dimensions of #{length} feet by #{width} feet."
end


def do_stuff(length, width)
  if contains_digit?(length) && contains_digit?(width)
    converted_length = convert_to_number(length)
    converted_width = convert_to_number(width)
    confirms_dimensions(converted_length, converted_width)
    area = area_in_feet(converted_length, converted_width)
    display_area_in_feet(area)
    area_metres = feet_to_metres(area)
    display_area_in_metres(area_metres)
  else
    "The dimensions you entered were incorrect, please enter them again."
  end
end

def area_in_feet(length, width)
  length * width
end

def display_area_in_feet(area)
  puts "The area is"
  puts "#{area} square feet"
end

def display_area_in_metres(area)
  puts "#{area} square metres"
end

def feet_to_metres(area_in_feet)
  (area_in_feet * 0.09290304).round(3)
end


def contains_digit?(str)
  if str =~ /^\d+$/
    true
  else
    false
  end
end

def convert_to_number(str)
  str.to_i
end

#Stretch work:
# Create constant 0.09290304
# classes & objects- how to extend this programme so it's not all living in a file
# Inheritance model of different objects inside a class:
#Split into 2 x classes: decide what the objects are & then what their behaviour is, e.g 1. Area class(?)- is the area a feature of a room
#What purpose is the object serving? How to isolate methods so they can be used together
#Scalability e.g. area could be a football pitch & a
# Readme file - Readme template search- how to run the tests & apps- design & organisation
#Read up on OOD & Classes- write a smaller version of creating classes & using OOD
#Look at Lucy's bike github example

RSpec.describe "area of a rectangular room" do
  it "announces the area in feet" do
    expect {display_area_in_feet(10) }.to output(/10 square feet/).to_stdout
  end
  it "announces the area in metres" do
    expect {display_area_in_metres(10)}.to output(/10 square metres/).to_stdout
  end
  it "confirms the dimensions" do
    expect {confirms_dimensions(10, 5)}.to output(/10 feet by 5 feet/).to_stdout
  end
  it "returns true if the string contains a digit in the range 0-9" do
    expect(contains_digit?("3")).to eq (true)
  end
  it "returns true if the string contains a digit with two digits" do
    expect(contains_digit?("10")).to eq (true)
  end
  it "returns true if the string contains three digits" do
    expect(contains_digit?("101")).to eq (true)
  end
  it "returns if the string contains four digits and more" do
    expect(contains_digit?("1001")).to eq (true)
  end
  it "returns false if the string contains letters not digits" do
    expect(contains_digit?("abc")).to eq (false)
  end
  it "returns false if the string contains characters not digits" do
    expect(contains_digit?("$!@*")).to eq (false)
  end
  it "returns false if the string contains an empty string not digits" do
    expect(contains_digit?(" ")).to eq (false)
  end
  it "converts the string to a number" do
    expect(convert_to_number("10")).to eq (10)
  end
  it "calculates the area in feet" do
    expect(area_in_feet(10, 5)).to eq (50)
  end
  it "converts the area in feet to metres" do
    expect(feet_to_metres(100)).to eq (9.29)
  end
end

#
# Regex notes
# if string =~ /^\d$/ #how can i specify a range from a string "0..9" so first test should return false? ("0..9").to_a.join
#       true
# \d+
# \d Will find 1 (!) digit. \d\d will find two consecutive ones. \d+ will find many, but at least one consecutive characters.
#
# step 1
# def string_contains_digit?(str)
#   if str =~ /^\d$/
#     true
#   elsif str =~ /^\d\d$/
#     true
#   elsif str =~ /^\d+$/
#     true
#   end
# end
