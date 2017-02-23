# Problem: create a program that calculates the area of a room. Prompt the user for the length & width of the room in feet. Then display the area in both square feet & square meters.
#
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
# validate measurement data

# Success message if no errors
# print "You entered dimensions of #{length} feet by #{width} feet."
# Error handling message if format is not acceptable
# print "blah blah What is the length of t"

def get_length_of_room #or get_length_of_room
  puts "What is the length of the room in feet?"
  length = gets.chomp
end
#length scope

def get_length_of_room
  #happy path - it would proceed to get_width_of_room
  # error handling- message and ask the question again
end

def get_width_of_room
  #happy path - it would proceed to confirmation mesage
end

# think about whether to validate information all together or separately
# is it separate methods for getting length and width so you know which question needs to be asked again if needed

def display_successful_message(length,width)
  if length.integer? == true && width.integer? == true
    puts "You entered dimensions of #{length} feet by #{width} feet."
  #.round // 3 decimal places for floats?
end

def is_numeric?(measurement)
  # //if successful - print
  #   error handling - if the question that needs to be asked is the length of the width
  #boolean
end


# area_f = length * width
# area_m = area_f * 0.09290304
# print "The area is "
# print "#{area} square feet"
# print "#{area_m} square feet"

# def get_area_in_square_feet
# end

#look for duplicate code- how to extract into a method to be reused
#smaller methods?
#tests for the smaller problems in methods

# How do you make tests for gets.chomp cases?
#how to store gets.chomp values & be a global variable- so you can access across different methods

RSpec.describe "area of a rectangular room" do
  it "returns the success string if the input is an integer" do
    expect(display_successful_message(1)).to eq (1)
  end
end
