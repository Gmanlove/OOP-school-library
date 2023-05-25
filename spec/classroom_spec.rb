require './classroom'

describe Classroom do
  before :each do
    @classroom = Classroom.new('students')
  end

  describe '#new' do
    it 'Should return a Classroom object' do
      expect(@classroom).to be_an_instance_of Classroom
    end
  end

  describe '#add_students' do
    it 'should return student in classroom' do
      student = double('Student')
      allow(student).to receive(:classroom=).and_return('students')
      expect(@classroom.students).to eql []
    end
  end
end
