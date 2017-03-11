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

def gets_length
  puts "Please input the length in feet"
  length = gets.chomp
end

def gets_width
  puts "Please input the width in feet"
  length = gets.chomp
end

#is there any way I can check if the input is definitely in feet

def main
  length = gets_length()
  width = gets_width()
  main_programme(length, width)
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

def not_valid_error_message #as part of the logic of the programme if contains_digits == false then... double check that this does not need to include an if statement
  puts "Please input your length & width again as digits. For example, 5, 6."
end

def calculate_area_of_ceiling(length, width)
  length * width
end

 # def calculate_gallons(area)
 #   if area <= 350
 #     1
 #   elsif area <= 700
 #     2
 #   elsif area <= 1050
 #     3
 #   end
 # end


Gallons = 350
 def calculate_gallons(area)
   if area <= 350
     1
   elsif area <= 700
     2
   elsif area <= 1050
     3
   end
 end
 #enumerate in ruby

#pseudocode: calculate_gallons
# i need to iterate over each loop to check if it's <= 350 & enumerate each time by 350 to check
# def looping(num)
#   new_num = 0
#   num.each do |x|
#     new_num = new_num + 1
#   end
#   return new_num
# end
#
# num = ([7,6,5,4,3,2,1])
# looping(num)
def calculate_gallons(area)
  Gallons = 350
  ouput = 1
  gallons_multiple = Gallons + Gallons
  output = output + output

  while area <= gallons_multiple
    output
  end
  return output
end






# def displays_gallons(calculate_gallons, calculate_area_of_ceiling)
#   puts "You will need to purchase #{calculate_gallons} gallons of paint to cover #{area_square_feet)} square feet."
# end

RSpec.describe "creates a paint calculator" do
  it "returns true if the string contains a digit" do
    expect(contains_digits?("123")).to eq true
  end
  it "returns false if the string contains letters" do
    expect(contains_digits?("wdcsf56")).to eq false
  end
  it "returns false if the string contains other characters" do
    expect(contains_digits?("*&1")).to eq false
  end
  it "converts a string to a number" do
    expect(convert_to_number("12")).to eq (12)
  end
  it "Prints an error message" do
    expect{ not_valid_error_message}.to output(/Please input your length & width again as digits/).to_stdout
  end
  it "calculates the area of the ceiling" do
    expect(calculate_area_of_ceiling(5,5)).to eq (25)
  end
  # it "returns 1 if the area is less than or equal to 350" do
  #   expect(calculate_gallons(280)).to eq (1)
  # end
  # it "returns 2 if the area is less than or equal to 700" do
  #   expect(calculate_gallons(600)).to eq (2)
  #   expect(calculate_gallons(360)).to eq (2)
  # end
  # it "returns 3 if the area is less than or equal to 1050" do
  #   expect(calculate_gallons(900)).to eq (3)
  # end
  # it "returns 2 if the area if more than 350 and less than 700" do
  #   expect(calculate_gallons(400)).to eq (2)
  # end
  it "gives the number of gallons of paint needed according to the area" do
    expect(calculate_gallons(400)).to eq (2)
  end

end

  # it "displays the number of gallons needed for the area of the paint party" do
  #   expect{ displays_gallons(1, 500)) }.to output(/1 gallons of paint to cover 500/).to_stdout
  # end
