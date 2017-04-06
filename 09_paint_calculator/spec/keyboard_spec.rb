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

end
# expect(keyboard.gets_length()).to eq (gets_length())
# expect{ keyboard.gets_length() }.to output(/Please input the length in feet/).to_stdout
