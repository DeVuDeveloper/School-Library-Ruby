require_relative '../classes/book'
require_relative '../classes/student'
require_relative '../classes/rental'

describe Rental do
  context 'test for Rental class' do
    date = '2022-04-12'
    book = Book.new('It Ends with Us', 'Colleen Hoover')
    person = Student.new(35, 'Orogoro', parent_permission: true)
    rental = Rental.new(date, book, person)

    it 'if it is instance of class' do
      expect(rental).to be_an_instance_of(Rental)
    end

    it 'if it is book' do
      expect(rental.book).to eql(book)
    end

    it 'if it is person' do
      expect(rental.person).to eql(person)
    end

    it 'if it is correct name of renter' do
      expect(rental.person.name) == 'Orogoro'
    end

    it 'if it is correct title of rented book' do
      expect(rental.book.title) == 'It Ends with Us'
    end
  end
end
