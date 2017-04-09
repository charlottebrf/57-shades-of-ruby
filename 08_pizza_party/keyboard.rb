class Keyboard

  def initialize(display)
    @display = display
  end

#duplicative methods- how can I refactor to avoid repretition?
#without forcing my method to do too much
  def num_people
    @display.asks_question("people")
    people = $stdin.gets.chomp
    if number?(people)
      people
    else
      @display.error_message()
      num_people
    end
  end

  def num_pizzas
    @display.asks_question("pizzas")
    pizzas = $stdin.gets.chomp
    if number?(pizzas)
      pizzas
    else
      @display.error_message()
      num_pizzas
    end
  end

  def number?(str)
    if str == "0"
      false
    elsif str =~ /^\d+$/
      true
    else
      false
    end
  end
end
