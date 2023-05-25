require_relative 'app'
require_relative 'main_introduction'

class Menu
  def self.display_options
    puts 'Please choose an option:'
    puts '1. List Books'
    puts '2. List People'
    puts '3. Add Person'
    puts '4. Add Book'
    puts '5. Add Rental'
    puts '6. List Rentals'
    puts '7. Exit'
    print 'Enter your choice: '
  end
end

def run_app(app)
  menu_options = {
    '1' => :list_books,
    '2' => :list_people,
    '3' => :add_person,
    '4' => :add_book,
    '5' => :add_rental,
    '6' => :list_rentals,
    '7' => :exit
  }

  loop do
    Menu.display_options
    input = gets.chomp

    if menu_options.key?(input)
      action = menu_options[input]
      app.send(action)
      break if action == :exit
    else
      puts 'Invalid input. Please try again.'
    end
  end
end

main
