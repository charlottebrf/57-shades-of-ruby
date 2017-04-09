
class Calculator
  def initialize(people, pizzas, display)
    @people = people
    @pizzas = pizzas
    @display = display
  end


  SLICES = 8

  def total
    @pizzas * SLICES
  end

  def total_slices
    slices1 = (total() / @people).round
    if slices1.even?

      @display.slices(slices1)
    else
      slices - 1
      @display.slices(slices1)
    end
  end

  def left_slices
    remainder = slices() * @people
    total() - remainder
  end
end
