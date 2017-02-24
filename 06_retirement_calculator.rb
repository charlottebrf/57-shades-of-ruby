#Problem: create a program that determines how many years you have left until retirement & the year you can retire. It should prompt you for your current age & the age you want to retire & display the output as shown in the example that follows.

#Example output:
# What is your current age? 25
# At what age would you like to retire? 65
# You have 40 years left until you can retire.
# It's 2015, so you can retire in 2055.

# Constraints:
# -Again be sure to convert the input to numerical data before doing any math.
# -Don't hard-code the current year into your program. Get it from the system via your programming language.

# pseudocode:
# prompt: What is your current age?
# input: age = Integer(gets.chomp)
# prompt: At what age would you like to retire?
# input: retire_age = Integer(gets.chomp)
# years_left_to_retirement = retire_age- age
# output: "You have"  + years_left_to_retirement + "left until you can retire"
# output: "It's 2017, so you can retire in" + 2017 + years_left_to_retirement " ."

require('date') #date / class /ruby

def retirement_calculator
  puts "What is your current age?"
  age = Integer(gets.chomp)
  puts "At what age would you like to retire?"
  retire_age = Integer(gets.chomp)
  years_left_to_retirement = retire_age - age
  puts "You have #{years_left_to_retirement} until you retire."
  current_year = Date.today.year #uninitialized constant error
  retirement_year = current_year + years_left_to_retirement
  puts "It's #{current_year}, so you can retire in #{retirement_year}."
end

retirement_calculator
