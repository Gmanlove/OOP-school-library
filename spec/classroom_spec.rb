
require './classroom'


RSpec.describe Classroom do
    describe '#add_student' do
      it 'adds a student to the classroom' do
        classroom = Classroom.new('Class A')
        student = Student.new(name: 'John Doe', age: 16)
  
        classroom.add_student(student)
  
        expect(classroom.students).to contain_exactly(student)
        expect(student.classroom).to eq(classroom)
      end
    end
  end