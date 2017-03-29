# Problem: Write a program that asks the user for their age & compare it to the legal driving age of 16. If the user is 16 or older, then the program should display "You are old enough to legally drive". If the user is under 16, the program should display "You are not old enough to legally drive".

# Example output:
# What is your age?
# You are not old enough to legally drive
#
# OR
#
# What is your age?
# You are old enough to legally drive.
#
# Constraints:
# *Use a single output statement
# *Ise a ternary operatory to write this program.


def checks_age(age)
  if age.to_i < 16
    true
  else
    false
  end
end

  def asks_age
    puts "What is your age?"
    gets.chomp
  end


  def gives_response(response)
    puts response
  end

  def main_program
    age = asks_age
    checks_age(age)
    underage_or_overage = checks_age(age)
    if underage_or_overage == true
      gives_response("You are not old enough to legally drive.")
    else
      gives_response("You are old enough to legally drive.")
    end
  end

main_program
