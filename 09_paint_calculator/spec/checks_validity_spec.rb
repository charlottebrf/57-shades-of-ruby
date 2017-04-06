require_relative "../checks_validity"

describe "checks validity of user input" do
  it "returns false if given 0" do
    checker = ChecksValidity.new("0")
    expect(checker.is_valid?()).to eq (false)
  end
  it "returns true if a digit between 1-9 is given" do
    checker = ChecksValidity.new("6")
    expect(checker.is_valid?()).to eq (true)
  end
  it "returns true if a digit between 10-99 is given" do
    checker = ChecksValidity.new("99")
    expect(checker.is_valid?()).to eq (true)
  end
  it "returns true if a digit over 100+ is given" do
    checker = ChecksValidity.new("10000")
    expect(checker.is_valid?()).to eq (true)
  end
end
