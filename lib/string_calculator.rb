module StringCalculator

  def self.add(string)
    return string.to_i unless string.include? ","
    digit_strings = string.split(",")
    digit_strings.inject(0) { |t,s| t + s.to_i }
  end

end
