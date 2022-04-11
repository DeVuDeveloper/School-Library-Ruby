require_relative './classes/user_options'
require_relative './classes/create_list_books'
require_relative './classes/create_list_persones'
require_relative './classes/create_list_rentals'
require_relative './classes/book'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/rental'

def main
  option = UserOptions.new
  option.console_entry_point
end

def list_of_options
  puts
  puts 'Choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def option(input)
  case input
  when '1'
    @books.list_all_books
  when '2'
    @persones.list_all_persones
  when '3'
    @persones.create_person
  when '4'
    @books.create_book
  when '5'
    @rentals.create_rental
  when '6'
    @rentals.list_all_rentals

  else
    puts 'Please enter a number between 1 and 7.'
  end
end

main
