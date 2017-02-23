# PEMDAS/ Please Excuse My Dear Aunt Sally
# -Parenthesis
# -Exponents
# -Multiplication
# -Division
# -Addition
# -Subtraction
#
# Common issue: floating-point precision issues. E.g.numbers for currency, common resolution is to use ineters & then add decimal point back in.
#
# cents = 1.25 * 100.0
# => 125.0
# tax = cents * 0.055
# =>6.875
# tax = tax.round / 100.0
# 0.07
