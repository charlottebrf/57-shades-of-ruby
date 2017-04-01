# Problem: Create a program that prompts for your weight, gender, number of drinks, the amount of alcohol by volume of the drinks consumed, and the amount of time since your last drink. Calculate your blood alcohol context (BAC) using this formula.
#
# BAC = (A x 5.14 / W x r) - .015 x H
#
# A = total alcohol consumed in ounces (oz)
# W = body weight in pounds
# r = alcohol distribution ratio:
#   -0.73 for men
#   -0.66 for women
# H = number of hours since the last drink
#
# Display whether or not it's legal to drive by comparing the blood alcohol content to 0.08
#
# Example output:
#
# Your BAC is 0.08
# It is not legal for you to drive
#
# Constaint:
# Prevent the user from entering non-numeric values



# Problem: Create a program that prompts for your weight, gender, number of drinks, the amount of alcohol by volume of the drinks consumed, and the amount of time since your last drink. Calculate your blood alcohol context (BAC) using this formula.

def main_program
  weight = asks_question("Please input your body weight in pounds:")
  gender = asks_question("Please input your gender as Female or Male:")
  drinks = asks_question("Please input the number of drinks you've consumed:")
  volume = asks_question("Please input the amont of alcohol by volume of the drinks consumed:")
  last_drink = asks_question("Please input the amount of time since your last drink in minutes:")
  gender = gets_gender(gender)
  person1 = BloodCalculator.new(weight, gender, drinks, volume, last_drink)
  bac = person1.bac_calculator(volume, weight, last_drink) #giving an error message of wrong number of arguments
  displays_bac(bac)
  if bac <= 0.08
    displays_message("It is legal for you to drive.")
  else
    displays_message("Its is not legal for you to drive.")
  end
end

class BloodCalculator

  attr_reader :volume :weight :last_drink
  #error accessing the values

  def initalize(weight, gender, drinks, volume, last_drink)
    @weight = weight
    @gender = gender
    @drinks = drinks
    @volume = volume
    @last_drink = last_drink
  end

  def bac_calculator
    bac = (@volume * 5.14 / @weight * gets_gender) - 0.015 * @last_drink
    #need to work out minutes/ hours
    #navigating different measurements/conversions
  end

end

def gets_gender(gender)
  if gender == "Female" || "female"
    0.66
  else
    0.73
  end
end

def asks_question(question)
  puts question
  gets.chomp.to_f
end



def displays_bac(bac)
  puts "Your BAC is #{}"
end

def displays_message(message)
  puts message
end

main_program
