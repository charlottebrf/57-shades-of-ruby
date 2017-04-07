require_relative "../display"
#do I need to require keyboard? Or not because it's keyboard with the instance variable that requires the display?

describe "the display" do
  it "asks how many people or people there are" do
    display = Display.new
    expect { display.asks_question("people") }.to output(/How many people are there?/).to_stdout
    expect { display.asks_question("pizzas") }.to output(/How many pizzas are there?/).to_stdout
  end
  it "confirms the users' input" do
    display = Display.new
    expect { display.confirms_input("12", "10") }.to output(/12 people with 10 pizzas/).to_stdout
  end
  it "confirms the users' input" do
    display = Display.new
    expect { display.confirms_input("12", "10") }.to output(/12 people with 10 pizzas/).to_stdout
  end
  it "confirms the number of slices per person" do
    display = Display.new
    expect { display.slices("5") }.to output(/gets 5 pieces of pizza/).to_stdout
  end
  it "confirms the number of leftover slices" do
    display = Display.new
    expect { display.left_over("7") }.to output(/7 leftover pieces/).to_stdout
  end
  it "displays an error message" do
    display = Display.new
    expect { display.error_message() }.to output(/Sorry we couldn't process your input./).to_stdout
  end
end
