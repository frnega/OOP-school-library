require_relative 'helper_spec'

describe Book do
  before :each do
    @book = Book.new('Rock And Roll', 'Norway')
  end
  context 'given two arguments' do
    it 'is an object of Book ' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'has the given data ' do
      expect(@book).to have_attributes(title: 'Rock And Roll', author: 'Norway')
    end

    it 'can add a rental' do
      rental = Rental.new(Date.today, @book, 'John Doe')
      @book.rentals << rental
      expect(@book.rentals).to include(rental)
    end
  end
end
