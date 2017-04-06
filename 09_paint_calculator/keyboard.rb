class Keyboard
  def gets_length
    puts "Please input the length in feet"
    length = $stdin.gets.chomp
    checker = ChecksValidity.new(length)
    if checker.is_valid?
      length.to_f
    else
      puts "Please insert a valid input"
      gets_length()
    end
  end

  def gets_width
    puts "Please input the width in feet"
    width = $stdin.gets.chomp
    checker = ChecksValidity.new(width)
    if checker.is_valid?
      width.to_f
    else
      puts "Please insert a valid input"
      gets_width()
    end
  end
end
