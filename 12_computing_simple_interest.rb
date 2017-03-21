# Problem: Create a program that computes simple interest. Prompt for the principal amount, the rate as a percentage, and the time, and display the amount accrued (principal + inerest).
#
# The formula for simple interest is A = P(1 + rt), where P is the principal amount, r is the annual rate of interest, t is the number of years the amount is invested, and A is the amount at the end of the investment.
#
# Example output:
#
# Enter the principal: 1500
# Enter the rate of interest: 4.3
# Enter the number of years: 4
#
# After 4 years at 4.3%, the investment will be worth $1758.

# Pseudocode:
#
#   def calculates_interest
#     @amount = @principal(1 + @interest * @years)
#   end
#
#
# class gets_information
# Prompts: "Enter the principal amount:"
# stores principle amount: gets.chomp
#
# Prompts: "Enter the rate of interest:"
# stores rate of interest: gets.chomp
#
# Prompts: "Enter the number of years:"
# stores years: gets.chomp
# end
#
# Displays results: After #{years}at 4.3%, the investment will be worth #{investment_total}.

class Interest

  def initialize(principal_amount, rate_of_interest, number_of_years)
    @principal_amount = principal_amount
    @rate_of_interest = rate_of_interest
    @number_of_years = number_of_years
  end

  def calculates_interest
    interest = @principal_amount.to_f * ( 1 + (@rate_of_interest.to_f / 100 * @number_of_years.to_f))
  end

  def displays_interest(interest)
    puts "After #{@number_of_years} years at #{@rate_of_interest}, the investment will be worth $ #{interest}".strip
  end

end

def main_program
  principal_amount = gets_principal_amount
  rate_of_interest = gets_rate_of_interest
  number_of_years = gets_number_of_years
  investment1 = Interest.new(principal_amount, rate_of_interest, number_of_years)
  interest = investment1.calculates_interest
  investment1.displays_interest(interest)
end

#should these methods be one method in the class with the gets.chomp as an instance variable?
#Code feels duplicative
def gets_principal_amount
  puts "Enter the principal amount:"
  principal_amount = gets.chomp
end

def gets_rate_of_interest
  puts "Enter the rate of interest:"
  rate_of_interest = gets.chomp
end

def gets_number_of_years
  puts "Enter the number of years:"
  number_of_years = gets.chomp
end

main_program
# RSpec.describe "calculates Interest" do
#   it "calculates the interest" do
#     amount1 = Interest.new(10000, 3.875, 5)
#     expect { amount1.calculates_interest }.to output( /11937.5/ ).to_stdout
#     amount2 = Interest.new(1500, 4.3, 4)
#     expect { amount2.calculates_interest }.to output( /1758/ ).to_stdout
#   end
#   it "displays the interest" do
#     amount1 = Interest.new(10000, 3.875, 5)
#     expect { amount1.displays_interest(11937.5) }.to output( /After 5 years at 3.875, the investment will be worth \$11937.5/ ).to_stdout
#   end
#   it "gets the principal amount" do
#     expect(gets_principal_amount(10000)).to eq ("10000")
#     # amount1 = Interest.new(10000, 3.875, 5)
#     # expect { amount1.gets_principal_amount }.to output( /10000/ ).to_stdout
#   end
# end
