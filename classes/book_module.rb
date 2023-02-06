
class BookModule
    def initialize
        @books = []
    end
    
    attr_accessor :books
    def create_book
        print 'Title: '
        title = gets.chomp
    
        print 'Author: '
        author = gets.chomp
    
        @books << Book.new(title, author)
    
        print "Book created successfully\n\n"
    end

    def list_books
        @books.each { |book| puts book }
        puts
    end


end