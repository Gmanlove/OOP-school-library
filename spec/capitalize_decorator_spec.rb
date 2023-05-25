require_relative '../decorator'
require_relative '../capitalize_decorator'

RSpec.describe CapitalizeDecorator do
  let(:decorated_object) { double('DecoratedObject') }

  describe '#correct_name' do
    it 'capitalizes the name returned by the decorated object' do
      allow(decorated_object).to receive(:correct_name).and_return('john doe')
      decorated = CapitalizeDecorator.new(decorated_object)
      expect(decorated.correct_name).to eq('John doe')
    end

    it 'handles empty name correctly' do
      allow(decorated_object).to receive(:correct_name).and_return('')
      decorated = CapitalizeDecorator.new(decorated_object)
      expect(decorated.correct_name).to eq('')
    end
  end
end
