require_relative 'rental'

class RentalModule
    def initialize(books, students, teachers)
      @rentals = []
      @books = books
      @students = students
      @teachers = teachers
    end

    def people
        [*@students, *@teachers]
    end

    def create_rental
        puts 'Select a book from the following list by number'
        @books.each_with_index { |book, index| puts "#{index}) #{book}" }
        book_index = gets.chomp.to_i
        puts
    
        puts 'Select a person from the following list by number (not id)'
        people.each_with_index { |person, index| puts "#{index}) #{person}" }
        person_index = gets.chomp.to_i
        puts
    
        print 'Date: '
        date = gets.chomp
    
        @rentals << Rental.new(date, @books[book_index], people[person_index])
    
        print "Rental created successfully\n\n"
    end

    def list_rentals
        print 'ID of person: '
        id = gets.chomp.to_i
    
        puts 'Rentals:'
        @rentals.each { |rental| puts rental if rental.person.id == id }
        puts
    end
end