class ChecksValidity

  def initialize(user_input)
    @user_input = user_input
  end

  def is_valid?
    if @user_input == "0"
      false
    elsif @user_input =~ /^\d+$/
      true
    else
      false
    end
  end

end
