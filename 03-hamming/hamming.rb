class Hamming

  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
        raise ArgumentError, "The two strands must be of equal length."
    elsif strand1 == strand2
      return 0
    end


    distance = 0
    strand1.chars.each_with_index do |letter, i|
      if letter != strand2[i]
        distance += 1
      end
    end
    return distance
  end
  
end
