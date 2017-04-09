
class Calculator
  def initialize(people, pizzas)
    @people = people
    @pizzas = pizzas
  end


  SLICES = 8

  def total
    @pizzas * SLICES
  end

  def slices
    slices = (total() / @people).round
    if slices.even?
      slices
    else
      slices - 1
    end
  end

  def left_slices
    remainder = slices() * @people
    total() - remainder
  end
end
