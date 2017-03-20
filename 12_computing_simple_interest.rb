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
    @interest = calculates_interest
  end

  def calculates_interest
    @interest = @principal_amount(1 + @rate_of_interest * @number_of_years)
  end

  def displays_interest
    puts "After #{@number_of_years} at #{@rate_of_interest}, the investment will be worth $#{@interest}."
  end

end

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

RSpec.describe "calculates Interest" do
  it "calculates the interest" do
    amount1 = Interest.new(1500, 4.3, 4)
    expect { amount1.calculates_interest }.to output( /1758/ ).to_stdout
  end
end
#   it "displays the amount of dollars converted from euros" do
#     amount1 = CurrencyExchanger.new(20, 1.08)
#     expect{ amount1.displays_dollars(23.23) }.to output( /20 euros at an exchange rate of 1.08 is 23.23/ ).to_stdout
#   end
#   it "gets the exchange rate of the dollars" do
#   end
