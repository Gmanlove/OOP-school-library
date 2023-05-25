require './person'

describe Person do
  before :each do
    @person = Person.new(name: 'John Doe', age: 'age', parent_permission: true)
  end

  describe '#new' do
    it 'should take 3 parameters and return a Person object' do
      expect(@person).to be_an_instance_of Person
    end
  end

  describe '#age' do
    it 'should return the correct age' do
      expect(@person.age).to eql 'age'
    end
  end

  describe '#name' do
    it 'should return the correct name' do
      expect(@person.name).to eql 'John Doe'
    end
  end

  describe '#rentals' do
    it 'should have a rental' do
      expect(@person.rentals).to eql []
    end
  end

  describe '#parent_permission' do
    it 'should return parent_permission to be true' do
      expect(@person.parent_permission).to be true
    end
  end

  describe '#id' do
    it 'should return an id as an integer' do
      expect(@person.id).to be_an_instance_of Integer
    end
  end
end
