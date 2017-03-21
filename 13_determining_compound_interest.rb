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


class CompundedInterest

  def initialize(principal_amount, rate_of_interest, number_of_years, compounded_interest)
    @principal_amount = principal_amount
    @rate_of_interest = rate_of_interest
    @number_of_years = number_of_years
    @compounded = compounded_interest
  end

  def calculates_compounded_interest
    compounded_interest = @principal_amount.to_f * (( 1 + (@rate_of_interest.to_f / @compounded.to_f))* @compounded * @number_of_years)
  end

  def displays_compounded_interest(compounded_interest)
    puts "#{@principal_amount}invested at #{@rate_of_interest} for #{@number_of_years} years compounded #{@compounded} times per year is $#{compounded_interest}."
  end
#Do some tests to see if the math is functioning as expected & i've interpretted the equation as should have


end

#Look at how to avoid duplication here to stop repeating very similar looking methods
def gets_principal_amount
  puts "What is the principal amount?"
  principal_amount = gets.chomp
end

def gets_rate_of_interest
  puts "What is the rate?"
  rate_of_interest = gets.chomp
end

def gets_number_of_years
  puts "What is the number of years?"
  number_of_years = gets.chomp
end

def gets_compounded
  puts "What is the number of times the interest is compounded per year?"
  compounded = gets.chomp
end
