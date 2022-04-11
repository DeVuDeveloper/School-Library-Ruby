class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def to_json(_args = {})
    {
      'rental' => self.class.name,
      'date' => @date,
      'book' => @book,
      'person' => @person
    }
  end
end
