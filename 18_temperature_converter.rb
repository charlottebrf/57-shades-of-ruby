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

  def initalize(farenheit, celsius)
    @farenheit = farehenit
    @celsius = celsius
  end

  def celsius_converter
    (@farenheit - 32) * 5/9
  end

  def farenheit_converter
    (C * 9/5) + 32
  end

end

def converts_string(string)
  string.to_f
end
