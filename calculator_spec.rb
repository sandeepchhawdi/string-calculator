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
    end

    context 'using \n along with comma delimiter' do
      it 'when passing \n along with comma' do
        expect(calc.add("1\n2,3")).to eq(6)
      end
    end

    context 'using custom delimiter' do
      it 'when passing semicolon delimiter' do
        expect(calc.add("//;\n1;2;3;4")).to eq(10)
      end
    end
  end
end
