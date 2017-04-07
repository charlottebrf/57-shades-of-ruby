
class Display

  def asks_question(people_or_pizzas)
    puts "How many #{people_or_pizzas} are there?"
  end

  def confirms_input(people, pizzas)
    puts "#{people} people with #{pizzas} pizzas"
  end

  def slices(num_slices)
    puts "Each person gets #{num_slices} pieces of pizza."
  end

  def left_over(num_leftover)
    puts "There are #{num_leftover} leftover pieces."
  end

  def error_message
    puts "Sorry we couldn't process your input. Please enter a whole number so we can calculate the pizza party numbers!"
  end

end
