module StringCalculator
  extend self
  def self.add(input)
    raise 'only accepts a string' unless input.is_a?(String)
    numbers = input.scan(/[0-9-]+/).map(&:to_i)
    if negatives = get_negatives(numbers)
      raise "negative numbers not allowed - #{negatives}"
    end
    numbers.inject(0){|sum, x| x <= 1000 ? sum + x : sum }
  end

  private

  def get_negatives(numbers)
    negatives = numbers.select{ |i| i < 0 }
    negatives.join(",") if negatives.length > 0
  end

end