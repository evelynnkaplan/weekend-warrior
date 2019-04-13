require "pry"

class Roman

  def initialize
    @numeral = nil
  end
  
  def self.reverter(numeral)
    arabic = 0
    i = 0

    numeral.each_char do |char|
      char.upcase!
      value = Roman.calculate(char)
      if (value == 5 || value == 10) && (numeral[i - 1] == "I" && i > 0)
          arabic -= 2
      elsif (value == 50 || value == 100) && (numeral[i - 1] == "X" && i > 0)
          arabic -= 20
      elsif value == 1000 && (numeral[i - 1] == "C" && i > 0)
          arabic -= 200
      end
      arabic += value
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
end
