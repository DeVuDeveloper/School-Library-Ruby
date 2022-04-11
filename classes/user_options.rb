require_relative './create_list_books'
require_relative './create_list_persones'
require_relative './create_list_rentals'

class UserOptions
  def initialize
    @books = CreateListBooks.new
    @persones = CreateListPersones.new
    @rentals = CreateListRentals.new(@books.books, @persones.persones)
  end

  def console_entry_point
    puts 'Welcome to my School Library!'
    until list_of_options
      input = gets.chomp
      if input == '7'
        puts 'Thank You for using my School Library!'
        break
      end

      option input
    end
  end
end
