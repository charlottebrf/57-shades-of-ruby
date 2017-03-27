# Problem: create a program that validates user login credentials. The program must prompt the user for a username & password. The program should compare the password given by the user to a known password. If the password matches, the program should display "Welcome!" If it doesn't match, the program should display "I don't know you."
#
# Example output:
# What is the username?
# What is the password?
#
# What is the password? 12345
# I don't know you.
#
# OR
#
# What is the password? abc$123
# Welcome!
#
# Constraints:
# -USe an if/else statement for this Problem-Make sure the program is case sensistive

# Pseudocode:
# Prompts: Aks question(question)
# Stores result

def asks_question(question)
  puts question
  gets.chomp
end

def main_program
  username = asks_question("What is the username?")
  password = asks_question("What is the password?")
  user1 = PasswordSecurity.new(username, password)
  user1.displays_message
end

class PasswordSecurity

  def initialize (username, password)
    @username = username
    @password = password
  end

  def displays_message
    if checks_password
      puts "Welcome!"
    else
      puts "I don't know you."
    end
  end

  def checks_password
    @password == "Password123"
  end
  #action from if statement is a result of making a decision

end

main_program
