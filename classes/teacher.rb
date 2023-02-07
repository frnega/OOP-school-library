require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_s
    "[Teacher] #{super}"
  end

  def to_json(*_args)
     {
      'age'=> @age,
      'specialization' => @specialization,
      'name' => @name,
      'parent_permission' => @parent_permission,
      'class' => self.class.name,
      'id' => @id
    }
  end
end
