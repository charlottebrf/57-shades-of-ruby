#Problem: Mad Libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words & place them into the story, creating an often silly or funny story as a result.

#Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

#Example output:
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
# Do you walk your dog quickly? That's hilarious!

#pseudocode:
# prompt: enter a noun
# get.chomp noun
# prompt: enter a verb
# get.chomp verb
# prompt: enter an adjective
# get.chomp adjective
# prompt: enter an adverb
# get.chomp adverb
# return "do you #{verb} your #{noun} #{adverb}? That's hilarious"
def mad_lib
  puts "Enter a noun:"
  noun = gets.chomp
  puts "Enter a verb:"
  verb = gets.chomp
  puts "Enter an adjective"
  adjective = gets.chomp
  puts "Enter an adverb"
  adverb = gets.chomp
  puts "Do you #{verb} your #{noun} #{adverb}? That's hilarious"
end

mad_lib


# Constraints:
# Use a single output statement for this program
# If your language supports string interpolation or string substitution, use it to build up the output.
