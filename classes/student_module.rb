require_relative "student"
class StudentModule

    attr_accessor :students

    def initialize
        @students = []
    end

    def create_student
        print 'Age: '
        age = gets.chomp
    
        print 'Name: '
        name = gets.chomp
    
        print 'Has parent permission? [Y/N]: '
        case gets.chomp.upcase
        when 'Y'
          parent_permission = true
        when 'N'
          parent_permission = false
        else
          puts 'That is not a valid input. Person creation failed.'
          return
        end
    
        @students << Student.new(age, nil, name, parent_permission: parent_permission)
    end

    def to_s
        @students.each { |student| puts student }
        puts
    end
end