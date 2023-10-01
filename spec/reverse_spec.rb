require 'rspec'
require_relative '../solver'

describe 'Solver#reverse' do
  before :each do
    @solver = Solver.new
  end

  context 'when the argument is a valid string' do
    it 'returns the reversed string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('world')).to eq('dlrow')
    end
  end

  context 'when the argument is an empty string' do
    it 'returns an empty string' do
      expect(@solver.reverse('')).to eq('')
    end
  end

  context 'when the argument is not a string' do
    it 'raises an ArgumentError' do
      expect { @solver.reverse(123) }.to raise_error(ArgumentError, 'word must be a string')
      expect { @solver.reverse(1.23) }.to raise_error(ArgumentError, 'word must be a string')
    end
  end
end
