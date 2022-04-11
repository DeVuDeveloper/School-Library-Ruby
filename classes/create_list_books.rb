require 'json'

class CreateListBooks
  attr_accessor :books

  def initialize
    file = File.open('books.json', 'a+')
    @books = file.size.zero? ? [] : JSON.parse(file.read)
    file.close
  end

  def list_all_books
    file = File.open('books.json', 'r')
    puts 'Database is empty! Add a book.' if @books.empty?
    @books.each { |book| puts "[Book] Title: #{book['title']}, Author: #{book['author']}" }
    file.close
  end

  def create_book()
    file = File.open('books.json', 'w')
    puts 'Create a new book'
    print 'Enter title: '
    title = gets.chomp
    puts 'Enter author: '
    author = gets.chomp
    book = Book.new(title, author)
    book = book.to_json
    @books << book
    file.write(JSON[@books])
    file.close
    puts "Book #{title} created successfully."
  end
end
