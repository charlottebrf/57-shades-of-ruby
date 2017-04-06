require_relative "../checks_validity"

describe "checks validity " do
  it "returns false if given 0" do
    checker = ChecksValidity.new("0")
    expect(checker.is_valid?()).to eq (false)
  end

end
