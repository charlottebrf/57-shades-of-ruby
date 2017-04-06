class DisplaysGallons
  def initialize(gallons, area)
    @gallons = gallons
    @area = area
  end

  def displays_gallons
    if @gallons == 1
      puts "You will need to purchase #{@gallons} gallon of paint to cover #{@area} square feet."
    else
      puts "You will need to purchase #{@gallons} gallons of paint to cover #{@area} square feet."
    end
  end
end
