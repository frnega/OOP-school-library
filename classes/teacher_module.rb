require_relative "teacher"
class TeacherModule

    attr_accessor :teachers

    def initialize
        @teachers = []
    end

    def create_teacher
        print 'Age: '
        age = gets.chomp
    
        print 'Name: '
        name = gets.chomp
    
        print 'Specialization: '
        specialization = gets.chomp
    
        @teachers << Teacher.new(age, specialization, name)
    end

    def to_s
        @teachers.each { |teacher| puts teacher }
        puts
    end
end