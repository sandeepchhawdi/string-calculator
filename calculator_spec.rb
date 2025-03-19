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
  end
end
