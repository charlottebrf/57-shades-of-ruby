require_relative "../keyboard"
require 'stringio'

describe "keyboard gets user input" do
  it "gets the length" do
    $stdin = StringIO.new("35\n")
    keyboard = Keyboard.new
    expect(keyboard.gets_length()).to eq (35.0)
  end
  it "asks for valid input multiple times" do
    $stdin = StringIO.new("hey mom\n35\n")
    keyboard = Keyboard.new
    expect{ keyboard.gets_length() }.to output(/Please insert a valid input/).to_stdout
  end
  it "gets the width" do
    $stdin = StringIO.new("35\n")
    keyboard = Keyboard.new
    expect(keyboard.gets_width()).to eq (35.0)
  end
  it "asks for valid input multiple times" do
    $stdin = StringIO.new("hey mom\n35\n")
    keyboard = Keyboard.new
    expect{ keyboard.gets_width() }.to output(/Please insert a valid input/).to_stdout
  end

end
