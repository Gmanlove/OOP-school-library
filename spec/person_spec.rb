
require './person'


RSpec.describe Person do
    describe '#can_use_services?' do
      it 'returns true if the person is of age' do
        person = Person.new(name: 'John Doe', age: 25)
  
        expect(person.can_use_services?).to be true
      end
  
      it 'returns true if the person is underage but has parent permission' do
        person = Person.new(name: 'Jane Doe', age: 15, parent_permission: true)
  
        expect(person.can_use_services?).to be true
      end
  
      it 'returns false if the person is underage and does not have parent permission' do
        person = Person.new(name: 'Jack Doe', age: 17, parent_permission: false)
  
        expect(person.can_use_services?).to be false
      end
    end
  
    describe '#add_rental' do
      it 'creates a new rental and adds it to the person' do
        person = Person.new(name: 'John Doe', age: 25)
        book = Book.new('Title', 'Author')
        date = Date.today
        rental = person.add_rental(book, date)
  
        expect(rental.date).to eq(date)
        expect(rental.book).to eq(book)
        expect(rental.person).to eq(person)
        expect(person.rentals).to contain_exactly(rental)
      end
    end
  end