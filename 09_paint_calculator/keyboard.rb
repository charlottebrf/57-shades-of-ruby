class Keyboard
  def gets_length
    puts "Please input the length in feet"
    length = $stdin.gets.chomp
    checker = ChecksValidity.new(length)
    if checker.is_valid?
      length.to_f
    else
      puts "Please insert a valid input"
      gets_length() #no error message given just loops back to question- should have some better error handling?
    end
  end

  def gets_width
    puts "Please input the width in feet"
    width = $stdin.gets.chomp
    checker = ChecksValidity.new(width)
    if checker.is_valid?
      width.to_f
    else
      gets_width() #no error message given
    end
  end
end
