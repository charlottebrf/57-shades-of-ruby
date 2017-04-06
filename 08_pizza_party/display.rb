
class Display

#need to add in the test for this method
  def asks_question(people_or_pizzas)
    puts "How many #{people_or_pizzas} are there?"
  end

  def confirms_input(people, pizzas)
    puts "#{people} people with #{pizzas} pizzas"
  end

  def slices_per_person(slices)
    puts "Each person gets #{slices} pieces of pizza."
  end

  def left_over_slices(num)
    puts "There are #{num} leftover pieces."
  end

#set up a test for this 
  def error_message
    "Sorry we couldn't process your input. Please enter a whole number so we can calculate the pizza party numbers!"
  end

end
