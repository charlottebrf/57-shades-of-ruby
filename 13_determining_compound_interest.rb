# Problem: Write a program to compute the value of an investment compounded over time. The program should ask for the starting amount, the number of years to invest, the interest rate, and the number of periods per year to compound.
#
# Formula: A = P(1 + r/n)nt
#
# Where:
# P - is the principal amount
# r - is the annual rate of interest
# t - is the number of years the amount is invested
# n - is the number of times the interest is compounded per year
# A - is the amount at the end of the investment
#
# Example Output:
# What is the principal amount?
# What is the rate?
# What is the number of times the interest is compounded per year?
# $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84

# Pseudocode:
#
# Prompt:  What is the principal amount?
# Store Principal amount
#
# Prompt:  What is the rate?
# Store rate
#
# Prompt: What is the number of times the interest is compounded per year?
# Store compounded
#
# Display: $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84

#Look at how to avoid duplication here to stop repeating very similar looking methods

def ask_for(question)
  puts question
  gets.chomp
end

# What is the principal amount?
# What is the rate?
# What is the number of times the interest is compounded per year?
# $1500 invested at 4.3% for 6 years compounded 4 times per year is $1938.84

def main_program
  principal_amount = ask_for("What is the principal amount?")
  rate = ask_for("What is the rate?")
  compounded = ask_for("What is the number of times the interest is compounded per year?")
  years = ask_for("What is the number of years?")

  interest_calculator = CompoundedInterest.new(principal_amount, rate, compounded, years)
  compounded_interest = interest_calculator.calculates_compounded_interest
  interest_calculator.displays_compounded_interest(compounded_interest)
end



class CompoundedInterest

  def initialize(principal_amount, rate_of_interest, number_of_years, compounded)
    @principal_amount = principal_amount
    @rate_of_interest = rate_of_interest
    @number_of_years = number_of_years
    @compounded = compounded
  end

  def calculates_compounded_interest
    compounded_interest = @principal_amount.to_f * ( 1 + (@rate_of_interest.to_f / 100) / @compounded.to_f) ** (@compounded.to_f * @number_of_years.to_f)
    compounded_interest.round(2)
  end

  def displays_compounded_interest(compounded_interest)
    puts "#{@principal_amount} invested at #{@rate_of_interest} for #{@number_of_years} years compounded #{@compounded} times per year is $#{compounded_interest}."
  end

end

main_program
# RSpec.describe "calculates compound interest" do
#   it "calculates the interest" do
#     amount1 = CompoundedInterest.new(1500, 4.3, 6, 4)
#     expect(amount1.calculates_compounded_interest).to eq (1938.84)
#   end
#   it "displays the amount of compounded interest" do
#     amount1 = CompoundedInterest.new(1500, 4.3, 6, 4)
#     expect { amount1.displays_compounded_interest(1938.84)}.to output( /1500 invested at 4.3 for 6 years compounded 4 times per year is \$1938.84./ ).to_stdout
#   end
# end
