class Calculator

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
     @length * @width
  end

  Gallons = 350
  def calculate_gallons
    gallons, remainder = area().divmod(Gallons)
    if remainder > 0
      gallons + 1
    else
      gallons
    end
  end
end
