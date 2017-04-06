require_relative "./displays_gallons"
require_relative "./keyboard"
require_relative "./checks_validity"
require_relative "./calculator"

keyboard = Keyboard.new
length = keyboard.gets_length
width = keyboard.gets_width

calculator = Calculator.new(length, width)
gallons = calculator.calculate_gallons
area = calculator.area

DisplaysGallons.new(gallons, area).show_message
