# Calculate gallons of paint needed to paint the ceiling of a room.
# Prompt for the length and width, and assume one gallon covers 350 square feet.
# Display the number of gallons needed to paint the ceiling as a whole number.
#
# Example Output
#        You will need to purchase 2 gallons of
#        paint to cover 360 square feet.
# Remember, you can’t buy a partial gallon of paint. You must round up to the next whole gallon.
# Constraints
# • Use a constant to hold the conversion rate.
# • Ensure that you round up to the next whole number.

#pseudocode
#prompt for the length
#store the length

#prompt for the width
#store the width

#check is a number not: a string of characters/letters, a 0 in a string
#boolean

#calculate area of ceiling
#length * width

#calculate area in feet

#calculate gallons needed
#area in feet / 360
#result * 2

#displays gallons of paint needed(number_of_gallons, area_square_feet)
#puts "You will need to purchase #{number_of_gallons} gallons of paint to cover #{area_square_feet)} square feet."

# def gets_length
#   puts "Please input the length in feet"
#   length = gets.chomp
# end
#
# def gets_width
#   puts "Please input the width in feet"
#   length = gets.chomp
# end
#
# def are_valid?(length, width)
#   if !contains_digits(length)) || !contains_digits?(width)
#     false
#   else
#     true
#   end
# end
#
# def contains_digits?(str)
#   if str == "0"
#     false
#   elsif str =~ /^\d+$/
#     true
#   else
#     false
#   end
# end
#
# def convert_to_number(str)
#   str.to_i
# end
#
# def calculate_area_of_ceiling (length, width)
#   length * width
# end

def calculate_gallons(calculate_area_of_ceiling)
  calculate_area_of_ceiling / 350
  # assume one gallon covers 350 square feet.
  # Display the number of gallons needed to paint the ceiling as a whole number.
end

 def displays_gallons(calculate_gallons, calculate_area_of_ceiling)
  puts "You will need to purchase #{calculate_gallons} gallons of paint to cover #{area_square_feet)} square feet."
end

RSpec.describe "creates a paint calculator" do
  it "calculates the gallons on paint needed for the area" do
    expect(calculate_gallons(500)).to eq (1)
  end
  it "displays the number of gallons needed for the area of the paint party" do
    expect{ displays_gallons(1, 500)) }.to output(/1 gallons of paint to cover 500/).to_stdout
  end
end
