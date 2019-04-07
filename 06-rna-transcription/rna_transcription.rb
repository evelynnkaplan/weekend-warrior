class Complement
  def self.of_dna(rna)
    i = 0
    rna.each_char do |char|
      if char == "G"
        rna[i] = "C"
      elsif char == "C"
        rna[i] = "G"
      elsif char == "A"
        rna[i] = "U"
      elsif char == "T"
        rna[i] = "A"
      else
        raise ArgumentError, "String can only contain G,C,T,A."
      end
      i += 1
    end
    return rna
  end

  def self.of_rna(dna)
    i = 0
    dna.each_char do |char|
      if char == "C"
        dna[i] = "G"
      elsif char == "G"
        dna[i] = "C"
      elsif char == "A"
        dna[i] = "T"
      elsif char == "U"
        dna[i] = "A"
      else
        raise ArgumentError, "String can only contain C,G,U,A."
      end
      i += 1
    end
    return dna
  end
end
