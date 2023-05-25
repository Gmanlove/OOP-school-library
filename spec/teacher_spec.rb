require_relative '../person'
require_relative '../teacher'
require 'rspec'

describe Teacher do
  let(:teacher) { Teacher.new(name: 'John Doe', age: 30, specialization: 'Math') }

  describe '#can_use_services?' do
    it 'returns true' do
      expect(teacher.can_use_services?).to be true
    end
  end

  describe '#to_h' do
    it 'returns a hash with name, age, and specialization' do
      expected_hash = {
        'name' => 'John Doe',
        'age' => 30,
        'specialization' => 'Math'
      }
      expect(teacher.to_h).to eq(expected_hash)
    end
  end
end
