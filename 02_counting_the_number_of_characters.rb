#problem: create a program that prompts for an input string and displays output that shows the input string & the number of characters the string contains.

#example output:
# What is the input string? Homer
# Homer has 5 characters.
#
# Constraints
# Be sure the output contains the original string.
# Use the single output statement to construct the output
# Use a built-in functon of the programming language to determine the length of the string

def string_counter
  puts "What is the input string?"
  string = gets.chomp
  puts "#{string} has #{string.length.to_s} characters"
end

puts string_counter

#Challenges
#if the user enters nothing state that the user must enter something into the program
#implement this program using a graphical user interface & update the character counter every time a key is pressed
