require_relative '../book'
require_relative '../rentable'

RSpec.describe Book do
  let(:book) { Book.new('Title', 'Author') }
  let(:person) { instance_double('Person') }
  let(:date) { instance_double('Date') }

  describe '#title' do
    it 'returns the book title' do
      expect(book.title).to eq('Title')
    end
  end

  describe '#author' do
    it 'returns the book author' do
      expect(book.author).to eq('Author')
    end
  end

  describe '#add_rental' do
    it 'creates a new rental with the person and book' do
      expect(Rental).to receive(:new).with(date, person, book)
      book.add_rental(person, date)
    end
  end

  describe '#to_h' do
    it 'returns a hash representation of the book' do
      expected_hash = {
        title: 'Title',
        author: 'Author',
        rentals: []
      }

      expect(book.to_h).to eq(expected_hash)
    end
  end
end
