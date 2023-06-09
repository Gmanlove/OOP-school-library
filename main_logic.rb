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
    Menu.display_menu_options
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
