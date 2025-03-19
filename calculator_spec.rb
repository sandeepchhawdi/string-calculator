require_relative 'calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  describe 'add' do
    context 'using comma delimiter' do
      it 'when passing blank string, should return 0' do
        expect(calc.add("")).to eq(0)
      end

      it 'when passing non integer, should return zero' do
        expect(calc.add("a,b")).to eq(0)
      end

      it 'when passing 2,3, should return 5' do
        expect(calc.add("2,3")).to eq(5)
      end

      it 'when passing negative numbers' do
        expect { calc.add("-1,-2,3,-4") }.to raise_error("negative numbers not allowed: -1,-2,-4")
      end
    end

    context 'using \n along with comma delimiter' do
      it 'when passing \n along with comma' do
        expect(calc.add("1\n2,3")).to eq(6)
      end

      it 'when passing negative numbers' do
        expect { calc.add("1,-2\n3,-4\n-5") }.to raise_error("negative numbers not allowed: -2,-4,-5")
      end
    end

    context 'using custom delimiter' do
      it 'when passing semicolon delimiter' do
        expect(calc.add("//;\n1;2;3;4")).to eq(10)
      end

      it 'when passing negative numbers' do
        expect { calc.add("//:\n-1:2:-3:4:-5") }.to raise_error("negative numbers not allowed: -1,-3,-5")
      end
    end
  end
end
