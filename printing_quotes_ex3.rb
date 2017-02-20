#Problem:
# Quotation marks are often used to denote the start and end of a string. But sometimes we need to print out the quotation marks themselves by using escape characters.
#
# Create a program that prompts for a quote and an author. Display the quotation and author as shown in the example output.

def printing_quotes
  puts "What is the quote?"
  quote = gets.chomp
  puts "Who said the quote?"
  name = gets.chomp
  puts name + " says, "  + "\"" + quote + "\""
  # puts name + " says, "  + "\"#{quote}\""
end

printing_quotes

#Pseudocode:
#prompts for a quote
#get.chomps quote
#outputs quote
#prompts for who said the quote
#get.chomps who said the quote
#returns the name of who said the quote + "says" + quote with strings



#Example output:
#What is the quote? These aren't the droids you're looking for.
#Who said it? Obi-Wan Kenobi
#Obi-Wan Kenobi says, "These aren't the droids you're looking for."

#Constraints:
#Use a single output statement to produce this output, using appropriate string-escaping techniques for quotes
#If your language supports string interpolation or string substition, don't use it for this exercise. Use string concatenation instead.

# RSpec.describe "printing quotes" do
#   it "prompts for a quote & returns the given quote" do
#     expect(printing_quotes).to eq ("Im wide awake")
#   end
# end
