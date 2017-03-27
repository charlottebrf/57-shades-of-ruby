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
#
# main program:
# username = asks_question("What is the username")
# password = asks_question("What is the password?")
# user1 = PasswordSecurity.new(username, password)
# true_or_false = user1.checks_password(password)
# if checks_password == true
#   displays_welcome_message
# else
#   displays_error_message
# end
# end
#
# displays_welcome_message
# puts "Welcome!"
#
# displays_error_message
# puts "I don't know you."
#
# class PasswordSecurity
#
#   initialize (username, password)
#     @username = username
#     @password = password
#   end
#
#
# private method:
# StoredPassword = "Password123"
# def checks_password(password)
# if password == StoredPassword
#   true
# else
#   false
# end
# end
#
# end

def asks_question(question)
  puts question
  gets.chomp
end

def main_program
  username = asks_question("What is the username")
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
    if checks_password == true
      puts "Welcome!"
    else
      puts "I don't know you."
    end
  end


  private

  Password = "Password123"
  def checks_password
    if @password == Password
      true
    else
      false
    end
  end

end

main_program
