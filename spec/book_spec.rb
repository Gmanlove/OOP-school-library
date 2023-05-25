
require './book'

RSpec.describe Book do
    # describe '#add_rental' do
    #   it 'creates a new rental and adds it to the book' do
    #     book = Book.new('Title', 'Author')
    #     person = Person.new(name: 'John Doe', age: 25)
    #     date = Date.today
    #     rental = book.add_rental(person, date)
  
    #     expect(rental.date).to eq(date)
    #     expect(rental.book).to eq(book)
    #     expect(rental.person).to eq(person)
    #     expect(book.rentals).to contain_exactly(rental)
    #   end
    # end
  
#     describe '#to_h' do
#       it 'returns a hash representation of the book' do
#         book = Book.new('Title', 'Author')
#         person = Person.new(name: 'John Doe', age: 25)
#         date = Date.today
#         book.add_rental(person, date)
  
#         expect(book.to_h).to eq({
#           title: 'Title',
#           author: 'Author',
#           rentals: [
#             {
#               date: date,
#               book: { title: 'Title', author: 'Author' },
#               person: { name: 'John Doe', age: 25 }
#             }
#           ]
#         })
#       end
#     end
#   end