class Rental
    attr_accessor :date, :book, :person
    @@rentals = []
  
    def initialize(date, book, person)
      @date = date
      @book = book
      @person = person
  
      person.rentals << self
      book.rentals << self
  
      @@rentals << self
    end
  
    def self.all
      @@rentals
    end
  end
  