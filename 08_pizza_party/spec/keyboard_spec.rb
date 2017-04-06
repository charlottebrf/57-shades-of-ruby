require_relative "../keyboard"
require_relative "../display"
require 'stringio'

describe "the keyboard" do
  it "asks how many people there are" do
    $stdin = StringIO.new("5\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_of_people()).to eq ("5")
  end
  it "asks how many pizzas there are" do
    $stdin = StringIO.new("10\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_of_pizzas()).to eq ("10")
  end
  it "asks again if answer is not a number" do
    $stdin = StringIO.new("foo\n12\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_of_pizzas).to eq("12")
  end
end
