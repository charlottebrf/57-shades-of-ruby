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

def string_contains_digit?(str)
  if str =~ /^\d+$/
    true
  else
    false
  end
end

def convert_string_to_number(str)
  str.to_i
end




RSpec.describe "area of a rectangular room" do
  it "returns true if the string contains a digit in the range 0-9" do
    expect(string_contains_digit?("3")).to eq (true)
  end
  it "returns true if the string contains a digit with two digits" do
    expect(string_contains_digit?("10")).to eq (true)
  end
  it "returns true if the string contains three digits" do
    expect(string_contains_digit?("101")).to eq (true)
  end
  it "returns if the string contains four digits and more" do
    expect(string_contains_digit?("1001")).to eq (true)
  end
  it "returns false if the string contains letters not digits" do
    expect(string_contains_digit?("abc")).to eq (false)
  end
  it "returns false if the string contains characters not digits" do
    expect(string_contains_digit?("$!@*")).to eq (false)
  end
  it "returns false if the string contains an empty string not digits" do
    expect(string_contains_digit?(" ")).to eq (false)
  end
  it "converts the string to a number" do
    expect(convert_string_to_number("10")).to eq (10)
  end
end

#Regex notes
# if string =~ /^\d$/ #how can i specify a range from a string "0..9" so first test should return false? ("0..9").to_a.join
#       true
# \d+
# \d Will find 1 (!) digit. \d\d will find two consecutive ones. \d+ will find many, but at least one consecutive characters.

#step 1
# def string_contains_digit?(str)
#   if str =~ /^\d$/
#     true
#   elsif str =~ /^\d\d$/
#     true
#   elsif str =~ /^\d+$/
#     true
#   end
# end
