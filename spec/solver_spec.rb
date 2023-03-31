require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe 'Factorial' do
    it 'Return 1 for factorial of 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'Return factorial' do
      expect(@solver.factorial(2)).to eq(2)
    end

    it 'Return an error if a negative number is used' do
      expect { @solver.factorial(-1) }.to(raise_error(StandardError))
    end

    describe 'Reverse word' do
      it 'returns the reverse of a word' do
        expect(@solver.reverse('hello')).to eq('olleh')
      end
    end
  end
