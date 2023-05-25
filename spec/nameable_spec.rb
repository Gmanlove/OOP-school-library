require_relative '../nameable'

RSpec.describe Nameable do
  let(:nameable) { Class.new(Nameable) }

  describe '#correct_name' do
    it 'raises NotImplementedError' do
      expect { nameable.new.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
