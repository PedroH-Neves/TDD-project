require 'rspec'
require_relative '../solver'

describe 'Solver#fizzbuzz' do
  before :each do
    @solver = Solver.new
  end
  context 'when the argument is divisible by 3' do
    it 'returns "fizz"' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
      expect(@solver.fizzbuzz(6)).to eq('fizz')
    end
  end

  context 'when the argument is divisible by 5' do
    it 'returns "buzz"' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
      expect(@solver.fizzbuzz(20)).to eq('buzz')
    end
  end

  context 'when the argument is divisible by both 3 and 5' do
    it 'returns "fizzbuzz"' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(30)).to eq('fizzbuzz')
    end
  end

  context 'when the argument is not divisible by either 3 or 5' do
    it 'returns the argument as a string' do
      expect(@solver.fizzbuzz(1).to_s).to eq('1')
      expect(@solver.fizzbuzz(2).to_s).to eq('2')
    end
  end

  context 'when the argument is not an integer' do
    it 'raises an exception' do
      expect { @solver.fizzbuzz(1.5) }.to raise_error(ArgumentError)
      expect { @solver.fizzbuzz('a') }.to raise_error(ArgumentError)
    end
  end
end