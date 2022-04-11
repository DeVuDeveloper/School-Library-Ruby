require_relative '../classes/book'

describe Book do
  context 'Test for Book class' do
    before(:context) do
      title = 'It Ends with Us'
      author = 'Colleen Hoover'
      @book = Book.new(title, author)
    end

    it 'if it is instance of class' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'if book title is It Ends with Us' do
      expect(@book.title).to eq('It Ends with Us')
    end

    it 'if book author is Colleen Hoover' do
      expect(@book.author).to eq('Colleen Hoover')
    end
  end
end
