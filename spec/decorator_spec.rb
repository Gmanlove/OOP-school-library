require_relative '../nameable'
require_relative '../decorator'

RSpec.describe Decorator do
  let(:nameable) { double('Nameable') }
  let(:decorated) { Decorator.new(nameable) }

  describe '#initialize' do
    it 'assigns the nameable object' do
      expect(decorated.instance_variable_get(:@nameable)).to eq(nameable)
    end
  end

  describe '#correct_name' do
    it 'delegates the correct_name method to the nameable object' do
      expect(nameable).to receive(:correct_name).and_return('John Doe')
      expect(decorated.correct_name).to eq('John Doe')
    end
  end
end
