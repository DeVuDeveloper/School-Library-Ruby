class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rentals(rental)
    @rentals.push(rental)
    rental.book = self
  end

  def to_json(__args = {})
    {
      'book' => self.class.name,
      'title' => @title,
      'author' => @author
    }
  end
end
