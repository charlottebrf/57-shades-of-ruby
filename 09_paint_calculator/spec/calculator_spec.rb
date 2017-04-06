require_relative "../calculator"

describe "the calculator" do
  it "multiplies the area" do
    calculator = Calculator.new(10, 5)
    expect(calculator.area()).to eq (50)
  end
  it "calculates the quantity of gallons" do
    calculator = Calculator.new(10, 5)
    expect(calculator.calculate_gallons()).to eq (1)
  end
end
