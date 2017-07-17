module StringCalculator

  def self.add(string)
    return string.to_i unless string.include? ","
    (a, b) = string.split(",")
    a.to_i + b.to_i
  end

  # ...and here when the above becomes too complex.

end
