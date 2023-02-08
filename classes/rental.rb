class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end

  def to_s
    "Date: #{@date}, Book #{@book['title']} by #{@book['author']}"
  end

  def to_json(*_args)
    {
      'date' => @date,
      'book_title' => @book['title'],
      'author' => @book['author'],
      'person_id' => @person['id'],
      'class' => self.class.name
    }
  end
end
