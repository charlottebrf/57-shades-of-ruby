#Turning data into information that can be used to make decisions

#Problem: Create a program that prompts for your name & prints a greeting using your name
#Example output:  What is your name? Brian // Hello, Brian, nice to meet you!

#Constraint: keep the input, string concatenation & output separate

#Nouns: inputs & outputs:
# program
#name
#greeting

#verbs: processes:
#prompts
#prints

def saying_hello
  puts "What's your name?"
  name = gets.chomp
  puts "Hello, " + name + ", nice to meet you!"
end

saying_hello

#can create new variables in body, doesn't need a parameter

#Challenges
#Write a new version of the program without using any variables
#Write a version of the program that displays different greetings for different people. 
