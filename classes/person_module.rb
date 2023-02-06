class PersonModule
    def initialize(students, teachers)
        @students = students
        @teachers = teachers
    end
    
    def people
        [*@students, *@teachers]
    end

    def list_people
        people.each { |person| puts person.to_s }
        puts 
    end
    
    def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    
        case gets.chomp
        when '1'
          @students.create_student
        when '2'
          @teachers.create_teacher
        else
          puts 'That is not a valid input. Person creation failed.'
          return
        end
    
        print "Person created successfully\n\n"
    end
end