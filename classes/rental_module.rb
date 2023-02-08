require_relative 'rental'
require 'json'
class RentalModule
  def initialize(books, students, teachers)
    @rentals = if File.read(File.join('data',
                                      'rentals.json')).empty?
                 []
               else
                 JSON.parse(File.read(File.join('data',
                                                'rentals.json')))
               end
    @books = books
    @students = students
    @teachers = teachers
  end

  def people
    [*@students, *@teachers]
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book['title']} Author: #{book['author']}" }
    book_index = gets.chomp.to_i
    puts

    puts 'Select a person from the following list by number (not id)'
    people.each_with_index do |person, index|
      puts "#{index}) [#{person['class']}] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']}"
    end

    person_index = gets.chomp.to_i
    puts

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, @books[book_index], people[person_index])
    @rentals << rental.to_json
    write_to_file
    print "Rental created successfully\n\n"
  end

  def list_rentals
    print 'ID of person: '
    id = gets.chomp.to_i

    puts 'Rentals:'
    @rentals.each do |rental|
      if rental['person_id'] == id
        puts "Date: #{rental['date']} Book: #{rental['author']} by \" #{rental['book_title']} \""
      end
    end
  end

  def write_to_file
    json_data = JSON.pretty_generate(@rentals)
    File.write(File.join('data', 'rentals.json'), json_data)
  end
end
