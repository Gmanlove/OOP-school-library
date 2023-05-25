require_relative '../rentable'
require 'rspec'

RSpec.describe Rental do
  let(:date) { '2023-05-25' }
  let(:book) { double('Book') }
  let(:person) { double('Person') }
  let(:rental) { Rental.new(date, book, person) }

  describe '#to_h' do
    it 'returns a hash with rental information' do
      allow(book).to receive(:to_h).and_return({ title: 'Book Title', author: 'John Doe' })
      allow(person).to receive(:to_h).and_return({ name: 'Jane Doe', age: 25 })

      expected_hash = {
        date: '2023-05-25',
        book: { title: 'Book Title', author: 'John Doe' },
        person: { name: 'Jane Doe', age: 25 }
      }

      expect(rental.to_h).to eq(expected_hash)
    end
  end

  describe 'attributes' do
    it 'has accessible attributes' do
      rental.date = '2023-06-01'
      rental.book = book
      rental.person = person

      expect(rental.date).to eq('2023-06-01')
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(person)
    end
  end
end
