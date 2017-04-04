# Problem: create a program that converts temperatures from Farenheit to Celsius or from Celsius to Farhenheit. Prompt for the starting temperature. The program should prompt for the type of conversion & then perform the conversion.
#
# The formulas are:
# C = (F-32) x 5/9
# F = (C x 9/5) + 32
#
# Example Output:
#
# Press C to convert from Farenheit to Celsius.
# Press F to convert from Celsius to Farenheit.
# Your choice: C
#
# Please enter the temperature in Farenheit: 32
# The temperature in Celsius is 0.
#
# Constraints:
# -Ensure that you allow upper or lowercase values for C & F.
# -Use as few ouput statements as possible & avoid repeating output strings.
#
#

class Converter
  def initialize(farenheit, celsius)
    @farenheit = farenheit
    @celsius = celsius
  end

  def converts_string(string)
    string.to_f
  end

  def celsius_converter
    (@farenheit - 32) * 5/9
  end

  def farenheit_converter
    (@celsius * 9/5) + 32
  end
end

def asks_temperature(string)
  puts "Please enter the temperature in #{string}"
  gets.chomp
end


def displays_message
  puts "Press C to convert from Farenheit to Celsius. Press F to convert from Celsius to Farenheit."
  gets.chomp
end

def displays_choice(choice)
  if choice == "C" || choice == "c"
    "Your choice: C"
  elsif choice == "F" || choice == "f"
    "Your choice: F"
  else
    puts "I'm sorry I didn't recognise your response. Please input again with either 'C' or 'F'."
  end
end

def displays_temperature(choice, converted_tempertaure)
  puts "The temperature in #{choice} is #{converted_tempertaure}."
end

def main_program
  farenheit = asks_temperature("farenheit")
  celsius = asks_temperature("celsius")
  displays_message
  displays_choice
end



# Press C to convert from Farenheit to Celsius.
# Press F to convert from Celsius to Farenheit.
# Your choice: C


RSpec.describe "converts an amount from farenheit to celsius & vice versa" do
  it "given an amount in farenheit converts the given amount to celsius" do
    input1 = Converter.new(32, 20)
    expect(input1.celsius_converter).to eq 0
  end
  it "given an amount in celsius converts the given amount to farenheit" do
    input1 = Converter.new(32, 20)
    expect(input1.farenheit_converter).to eq 68
  end
  it "given C or c will print C" do
    expect(displays_choice("C")).to eq "Your choice: C"
    expect(displays_choice("c")).to eq "Your choice: C"
  end
  it "given F will print F" do
    expect(displays_choice("F")).to eq "Your choice: F"
    expect(displays_choice("f")).to eq "Your choice: F"
  end
  # it "if input is anything other than C or F then user should receive an error message" do
  #   expect(choice("c")).to eq "I'm sorry I didn't recognise your response. Please input again with either 'C' or 'F'."
  # end
end
