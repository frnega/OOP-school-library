require_relative 'helper_spec'

describe Student do
    before :each do
      @student = Student.new(100, 'Classroom 1', 'Hein Tay Zar', parent_permission: true)
    end
    context 'given four arguments' do
      it 'is an object of Student ' do
        expect(@student).to be_an_instance_of(Student)
      end

      it 'has the given data ' do
        expect(@student).to have_attributes(name: 'Hein Tay Zar', age: 100, classroom: 'Classroom 1')
      end

      it 'can add to classroom' do
        classroom = Classroom.new('Classroom 1')
        @student.classroom = classroom
        expect(@student.classroom).to eq(classroom)
      end
  
      it 'has an id ' do
        expect(@student.id).to be_an_instance_of(Integer)
      end
      
      it 'is a descendant of Person' do
        expect(@student).to be_a_kind_of(Person)
      end
    end
  end