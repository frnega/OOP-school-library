require 'json'

class BookModule
  def initialize
    @books = File.read(File.join('data', 'books.json')).empty? ? [] : JSON.parse(File.read(File.join('data', 'books.json')))
  end

  attr_accessor :books

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book.to_json
    write_to_file
    print "Book created successfully\n\n"
  end

  def list_books
    @books.each { |book| puts "Author: #{book['author']} Title: #{book['title']}"}
    puts
  end

  def write_to_file
    json_data = JSON.pretty_generate(@books)
    File.write(File.join('data', 'books.json'), json_data)
  end
end
