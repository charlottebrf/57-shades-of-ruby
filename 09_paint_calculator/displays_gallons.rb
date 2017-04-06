class DisplaysGallons
  def initialize(gallons, area)
    @gallons = gallons
    @area = area
  end

  def show_message
    if @gallons == 1
      gallons("gallon")
    else
      gallons("gallons")
    end
  end

  def gallons(gallon_or_gallons)
    puts "You will need to purchase #{@gallons} #{gallon_or_gallons} of paint to cover #{@area} square feet."
  end
end
