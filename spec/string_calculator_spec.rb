#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  # Requirement 1
  it "returns 0 for empty string" do
    expect(StringCalculator.add("")).to eql(0)
  end

  # Requirement 2
  it "returns the value of a single digit" do
    (0..9).each do |digit|
      expect(StringCalculator.add(digit.to_s)).to eql(digit)
    end
  end

  # Requirement 3
  it "returns the sum of two digits when separated by a comma" do
    expect(StringCalculator.add("1,2")).to eql(3)
    expect(StringCalculator.add("7,9")).to eql(16)
  end

  # Requirement 4
  it "returns the sum of two strings of digits when separated by a comma" do
    expect(StringCalculator.add("12,45")).to eql(57)
    expect(StringCalculator.add("42,159")).to eql(201)
  end

end
