require_relative 'calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  context 'when passing valid inputs' do
    it 'passing blank string, should return 0' do
      expect(calc.add("")).to eq(0)
    end

    it 'passing 2,3 string, should return 5' do
      expect(calc.add("2,3")).to eq(5)
    end

    it 'passing new line' do
      expect(calc.add("1\n2,3")).to eq(6)
    end
  end

  context 'when passing invalid inputs' do
    it 'should return zero' do
      expect(calc.add("a,b")).to eq(0)
    end
  end

end
