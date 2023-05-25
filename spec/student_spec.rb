require_relative '../person'
require_relative '../student'
require 'rspec'

describe Student do
  let(:student) { Student.new(name: 'Jane Doe', age: 16, parent_permission: true, classroom: 'Math') }

  describe '#to_h' do
    it 'returns a hash with all student information' do
      expected_hash = {
        id: student.id,
        name: 'Jane Doe',
        age: 16,
        parent_permission: true,
        rentals: student.rentals,
        classroom: 'Math'
      }
      expect(student.to_h).to eq(expected_hash)
    end
  end

  describe '#classroom=' do
    let(:classroom) { double('Classroom') }

    context 'when student is already in the classroom' do
      before do
        allow(classroom).to receive(:students).and_return([student])
      end

      it 'does not add the student again' do
        expect(classroom).not_to receive(:add_student)
        student.classroom = classroom
      end
    end
  end
end
