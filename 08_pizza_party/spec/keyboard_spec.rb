require_relative "../keyboard"
require_relative "../display"
require "stringio"

describe "the keyboard" do
  it "asks how many people there are" do
    $stdin = StringIO.new("5\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_people()).to eq ("5")
  end
  it "asks how many pizzas there are" do
    $stdin = StringIO.new("10\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_pizzas()).to eq ("10")
  end
  it "asks again if answer is not a number" do
    $stdin = StringIO.new("foo\n12\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_people).to eq ("12")
    $stdin = StringIO.new("foo10\n10\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_pizzas).to eq ("10")
  end
  it "displays the input if a valid number" do
    $stdin = StringIO.new("12\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_people).to eq ("12")
    $stdin = StringIO.new("10\n")
    keyboard = Keyboard.new(Display.new)
    expect(keyboard.num_pizzas).to eq ("10")
  end
end
