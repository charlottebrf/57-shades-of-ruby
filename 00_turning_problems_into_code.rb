# Understand the problem
# • Gathering requirements- figuring out what features the programme should have
# • Once you have answers to questions- write out a problem statement that explains exactly what you're building
#
# • Break down a large program into smaller features that are easier to manage
# • Most complex applications out there are
# • Need to test, plan & document code
#
# Discovering inputs, Processes, and Outputs
# • The nouns end up becoming your inputs & outputs, & the verbs will be your proceses
#
# e.g.
#
# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the ti[ and the total amount of the bill.
#
# Circle the nouns-inputs & outputs:
# • bill amount
# • tip rate
# • tip
# • total amount
#
# Circle the verbs- processes:
# • prompt
# • compute
# • display
#
# The problem statementcan help to determine inputs & processes:
# • Inputs: bill amount, tip rate
# • Processes: calculate the tip
# • Outputs: tip amount, total amount
#
# Driving design with tests
# • Think about the result you want to get right from the start
# • TDD
# • Inputs:
# • Expected result:
# • Actual result:
#
# • Try to develop at least four test plans for every program
# • Think of as many scenarios for how people might break the program
# • Find testing frameworks for many programming languages at Wikipedia
# • Kent Beck, Test-Driven-Development: By Example
#
# Writing the Algorithm in Pseudocode
# • A step-by-step set of operations that need to be performed
# • Use initialze to state setting up an initial value
# • Prompt -promoting for input
# • Display -indicate what displaying on screen
#
# Calculator as Pseudocode:
#
# TipCalculator
#   initialize billAmount to 0
#   initialize tip to 0
#   initialize tipRate to 0
#   initialize total to 0
#
#   Prompt for billAmount with "What is the bill amount?"
#   Prompt for tipRate with "What is the tip rate?"
#
#   convert billAmount to a number
#   convert tipRate to a number
#
#   tip = billAmount * (tipRate / 100)
#   round tip up to nearest cent
#   total = billAmount + tip
#
#   Display "Tip: $" + tip
#   Display "Total: $" + total
# end
#
# •Include variable names & text you'll display on screen in pseuocode
#
# Writing the Code
#
# Constraints
#
# Discover inputs, processes & outputs
