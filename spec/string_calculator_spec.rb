require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do
  it 'should accept a string' do
    expect{ StringCalculator.add('1,2,3') }.not_to raise_error
  end

  it 'should not accept other data types' do
    expect{ StringCalculator.add(123) }.to raise_error('only accepts a string')
    expect{ StringCalculator.add(['123']) }.to raise_error('only accepts a string')
  end

  it 'should return 0 for an empty string' do
    expect(StringCalculator.add('')).to eq(0)
  end
end