require_relative '../person'  # Assuming the Person class is defined in 'person.rb'
require_relative '../book'    # Assuming the Book class is defined in 'book.rb'
require 'date'

RSpec.describe Person do
  let(:person) { Person.new(name: 'John Doe', age: 25, parent_permission: true) }
  let(:book) { Book.new('Harry Potter', 'J.K. Rowling') }

  describe '#add_rental' do
    it 'creates a new rental with the person and book' do
      date = Date.today
      rental = person.add_rental(book, date)
      
      expect(rental).to be_an_instance_of(Rental)
    end
  end


  describe '#can_use_services?' do
    context 'when the person is of age' do
      it 'returns true' do
        person.age = 21
        expect(person.can_use_services?).to be(true)
      end
    end

    context 'when the person is not of age but has parent permission' do
      it 'returns true' do
        person.age = 17
        expect(person.can_use_services?).to be(true)
      end
    end

    context 'when the person is not of age and does not have parent permission' do
      it 'returns false' do
        person.age = 15
        person.parent_permission = false
        expect(person.can_use_services?).to be(false)
      end
    end
  end

  describe '#correct_name' do
    it 'returns the correct name' do
      person.name = 'John Doe'
      expect(person.correct_name).to eq('John Doe')
    end
  end
end
