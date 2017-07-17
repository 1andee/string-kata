module StringCalculator

  def self.add(string)
    unless string.include? ","
      string.to_i
    else
      (a, b) = string.split(",")
      return a.to_i + b.to_i
    end
  end

  # ...and here when the above becomes too complex.

end
