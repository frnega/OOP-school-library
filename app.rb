require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/book'
require_relative 'classes/rental'
require_relative 'classes/student_module'
require_relative 'classes/teacher_module'
require_relative 'classes/person_module'
require_relative 'classes/book_module'
require_relative 'classes/rental_module'
class App
  def initialize
    @books = BookModule.new
    @students = StudentModule.new
    @teachers = TeacherModule.new
    @people = PersonModule.new(@students, @teachers)
    @rentals = RentalModule.new(@books.books, @students.students, @teachers.teachers)
  end

  def list_books
    @books.send(:list_books)
  end

  def list_people
    @people.send(:list_people)
  end

  def create_person
    @people.send(:create_person)
  end
 
  def create_book
    @books.send(:create_book)
  end

  def create_rental
    @rentals.send(:create_rental)
  end

  def list_rentals
    @rentals.send(:list_rentals)
  end

  def exit_app
    puts 'Thank you for using this app!'
    exit
  end
end
