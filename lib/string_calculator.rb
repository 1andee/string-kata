module StringCalculator

  def self.add(string)
    delim, string = extract_delim(string)
    string.gsub(/\n/, delim)
    return string.to_i unless string.include?delim
  # return to_i_with_raise(string) unless string.include?delim
    digit_strings = string.split(delim)
    digit_strings.inject(0) { |t,s| t + s.to_i }
  # COMMENTED OUT LINE 11 BECAUSE IT DOESN'T WORK
  # digit_strings.inject(0) { |t,s| t + s.to_i_with_raise }
  end

  def self.extract_delim(string)
    delim = ","
    return delim, string unless string[0..1] == "//"
    delim = string[2]
    [ delim, string[4..-1] ]
  end

  # def self.to_i_with_raise(string)
  #   i = string.to_i_with_raise
  #   raise "Cannot handle negative numbers" if i < 0
  # end

end
