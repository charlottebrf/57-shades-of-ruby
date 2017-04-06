require_relative "../displays_gallons"

describe "displays gallons" do
  it "displays a gallons confirmation message in singular for one gallon of paint" do
    displayer = DisplaysGallons.new(1, 330)
    expect{ displayer.show_message() }.to output(/purchase 1 gallon of paint to cover 330/).to_stdout
  end
  it "displays a gallons confirmation message in plural for more than one gallon of paint" do
    displayer = DisplaysGallons.new(2, 750)
    expect{ displayer.show_message() }.to output(/purchase 2 gallons of paint to cover 750/).to_stdout
  end

end
