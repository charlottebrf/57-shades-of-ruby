
class Calculator

  SLICES = 8

  def calculates_total_pizza_slices(pizzas)
    total_slices = pizzas * SLICES
    total_slices
  end

  #error message if there's 0
  def calculates_number_of_pizza_slices_per_person(people, pizzas)
    slice_per_person = calculates_total_pizza_slices(pizzas) / people
    slice_per_person = slice_per_person.round
    if slice_per_person.even?
      slice_per_person
    else
      slice_per_person - 1
    end
  end

  def calculates_number_of_left_over_slices(people, pizzas)
    remainder = calculates_number_of_pizza_slices_per_person(people, pizzas) * people
    calculates_total_pizza_slices(pizzas) - remainder
  end

end
