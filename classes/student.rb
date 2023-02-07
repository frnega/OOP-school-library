require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.add_student(self) unless @classroom.students.include?(self)
  end

  def to_s
    "[Student] #{super}"
  end

  def to_json(*_args)
    {
      'age' => @age,
      'classroom' => @classroom,
      'name' => @name,
      'parent_permission' => @parent_permission,
      'class' => self.class.name,
      'id' => @id
    }
  end
end
