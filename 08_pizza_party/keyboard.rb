class Keyboard

  def initialize(display)
    @display = display
  end

  def num_of_people
    @display.asks_question("people")
    $stdin.gets.chomp
  end

  def num_of_pizzas
    @display.asks_question("pizzas")
    pizzas = $stdin.gets.chomp
    if is_a_number?(pizzas)
      pizzas
    else
      num_of_pizzas
    end
  end

  def is_a_number?(str)
    if str == "0"
      false
    elsif str =~ /^\d+$/
      true
    else
      false
    end
  end
end
