require_relative 'person'

class CreateListRentals
  def initialize(books, persones)
    @books = books
    @persones = persones
    file = File.open('rentals.json', 'a+')
    @rentals = file.size.zero? ? [] : JSON.parse(file.read)
    file.close
  end

  def create_rental
    file = File.open('rentals.json', 'w')
    puts 'Select which book you want to rent by entering its number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book['title']}, Author: #{book['author']}" }
    book_id = gets.chomp.to_i
    puts 'Select a person from the list by its number'
    @persones.each_with_index do |person, index|
      puts "#{index}) [#{person['person']}] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
    end
    person_id = gets.chomp.to_i
    print 'Enter date in the following format YYYY/MM/DD: '
    date = gets.chomp.to_s
    rental = Rental.new(date, @books[book_id], @persones[person_id])
    rental = rental.to_json
    @rentals << rental
    file.write(JSON[@rentals])
    file.close
    puts 'Rental created successfully'
  end

  def list_all_rentals
    file = File.open('rentals.json', 'r')
    print 'To see person rentals enter the person ID: '
    id = gets.chomp.to_i

    puts "Rented Books for Person with id #{id}:"
    @rentals.each do |rental|
      if rental['person']['id'] == id
        puts "Date: #{rental['date']}, Book: #{rental['book']['title']} by #{rental['book']['author']}"
      end
    end
    file.close
  end
end
