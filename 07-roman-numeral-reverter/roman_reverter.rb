require "pry"

class Roman

  def initialize
    @numeral = nil
  end

  def self.reverter(numeral)
    @numeral = numeral # Make passed numeral an instance variable to use in Roman.subtract method.
    arabic = 0
    i = 0

    numeral.each_char do |char|
      char.upcase! # Case insensitive
      value = Roman.calculate(char)
      subtract_amount = Roman.subtract(value, i)
      arabic += value - subtract_amount
      i += 1
    end

    return arabic
  end

  def self.calculate(char)
    if char == "I"
      return 1
    elsif char == "V"
      return 5
    elsif char == "X"
      return 10
    elsif char == "L"
      return 50
    elsif char == "C"
      return 100
    elsif char == "D"
      return 500
    elsif char == "M"
      return 1000
    end
  end

  def self.subtract(value, i)
    if (value == 5 || value == 10) && (@numeral[i - 1] == "I" && i > 0)
      return 2
    elsif (value == 50 || value == 100) && (@numeral[i - 1] == "X" && i > 0)
      return 20
    elsif value == 1000 && (@numeral[i - 1] == "C" && i > 0)
      return 200
    else
      return 0
    end
  end
  
end
