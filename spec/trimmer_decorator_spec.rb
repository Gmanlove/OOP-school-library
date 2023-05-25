require_relative '../nameable'
require_relative '../decorator'
require_relative '../trimmer_decorator'

RSpec.describe TrimmerDecorator do
  let(:nameable) { double('Nameable') }
  let(:decorated) { TrimmerDecorator.new(nameable) }

  describe '#correct_name' do
    context 'when the original name is longer than 10 characters' do
      it 'trims the name to the first 10 characters' do
        allow(nameable).to receive(:correct_name).and_return('LongerNameThan10')
        expect(decorated.correct_name).to eq('LongerName')
      end
    end

    context 'when the original name is 10 characters or shorter' do
      it 'returns the original name as is' do
        allow(nameable).to receive(:correct_name).and_return('ShortName')
        expect(decorated.correct_name).to eq('ShortName')
      end
    end
  end
end
