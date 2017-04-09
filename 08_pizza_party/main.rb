def main_programme
  keyboard = Keyboard.new(display)
  people = keyboard.num_people()
  pizzas = keyboard.num_pizzas()

  display = Display.new
  display.confirms_input

  calculator = Calculator.new(people, pizzas)
  slices = calculator.slices
  left_over = calculator.left_slices
  #this isn't yet finished

end
