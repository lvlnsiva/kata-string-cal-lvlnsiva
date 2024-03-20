module StringCalculator
  extend self
  def self.add(input)
    raise 'only accepts a string' unless input.is_a?(String)
    numbers = input.scan(/[0-9-]+/).map(&:to_i)
    numbers.inject(0){|sum, x| x <= 1000 ? sum + x : sum }
  end
end