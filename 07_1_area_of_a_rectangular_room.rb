# Problem: create a program that calculates the area of a room. Prompt the user for the length & width of the room in feet. Then display the area in both square feet & square meters.
#
# E.g.:
# What is the length of the room in feet? 15
# What is the width of the room in feet? 20
# You entered dimensions of 15 feet by 20 feet.
# The area is
# 300 square feet
# 27.871 square meters
#
# Constraints:
# -Keep the calculations separate from the output.
# -Use a constant to hold the conversion factor.

# pseudocode:
# prompt "What is the length of the room in feet?"
# input length = gets.chomp
# prompt "What is the width of the room in feet?"
# input width = gets.chomp
# prompt "You entered dimensions of #{length} feet by #{width} feet."
# area = length * width
# area_m = area ** area x 0.09290304
# prompt "The area is "
# prompt "#{area} square feet"
# prompt "#{area_m} square feet"
