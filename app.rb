require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'rentable'
require 'json'

class App
  attr_accessor :persons, :books, :rentals

  def initialize
    @persons = JSON.parse(File.read('people.json')) || []
    @books = JSON.parse(File.read('books.json')) || []
    @rentals = JSON.parse(File.read('rentals.json')) || []
  end

  def line_return
    puts '---------------------------'
  end

  def list_books
    @books = JSON.parse(File.read('./data/books.json')) if File.exist?('./data/books.json')
    if @books.empty?
      puts 'There is no book.'
      line_return
      return
    end
    @books.each do |book|
      puts "Title: #{book['title']} , Author: #{book['author']}"
      line_return
    end
  end

  def print_persons_by_index
    @persons.each_with_index do |person, index|
      puts "#{index}) [#{person.type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def print_persons
    @persons.each do |person|
      puts "[#{person.type}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def list_people
    @persons = JSON.parse(File.read('./data/people.json')) if File.exist?('./data/people.json')
    if @persons.empty?
      puts 'There are no people.'
      line_return
      return
    end
    @persons.each do |person|
      person_type = person['class'] == 'Student' ? 'Student' : 'Teacher'
      puts "[#{person_type}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
      line_return
    end
  end

  def add_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]:  '
    permission = gets.chomp.downcase
    student = Student.new(name: name, age: age, parent_permission: permission)
    @persons << student.to_h.merge(class: 'Student')
    File.write('people.json', JSON.generate(@persons))
    puts 'Student created successfully!'
    line_return
  end

  def add_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp.capitalize
    teacher = Teacher.new(name: name, age: age)
    @persons << teacher.to_h.merge(class: 'Teacher') # Convert teacher to hash and merge class attribute
    File.write('people.json', JSON.generate(@persons))
    puts 'Teacher successfully created'
    line_return
  end

  def add_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    input = gets.chomp.to_i

    case input
    when 1
      add_student
    when 2
      add_teacher
    else
      puts 'Invalid input, person not created'
      line_eturn
    end
  end

  def add_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author:'
    author = gets.chomp
    book = Book.new(title, author).to_h
    @books << book
    File.write('books.json', JSON.generate(@books))
    puts "Book created successfuly!\n\n"
    line_return
  end
 
