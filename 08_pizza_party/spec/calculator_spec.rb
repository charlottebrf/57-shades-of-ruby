require_relative "../calculator"

describe "the calculator" do
  it "calculates the total number of slices" do
    calculator = Calculator.new(10, 5)
    expect(calculator.total()).to eq (40)
  end
  it "calculates the number of slices per person" do
    calculator = Calculator.new(10, 5)
    expect(calculator.slices()).to eq (4)
  end
  it "calculates the number of left over slices" do
    calculator = Calculator.new(10, 5)
    expect(calculator.left_slices()).to eq (0)
  end
end
