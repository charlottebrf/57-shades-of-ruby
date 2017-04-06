class Keyboard
#This method does two things it both displays a message to a user & takes its input- so should these therefore be separated into 2 classes & by proxy into 2 methods? That said the one needs the other.
  def gets_length
    puts "Please input the length in feet"
    length = gets.chomp
    checker = ChecksValidity.new(length)
    if checker.is_valid?
      length.to_f
    else
      gets_length() #no error message given
    end
  end

  def gets_width
    puts "Please input the width in feet"
    width = gets.chomp
    checker = ChecksValidity.new(width)
    if checker.is_valid?
      width.to_f
    else
      gets_width() #no error message given
    end
  end
end
