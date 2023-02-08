require_relative 'helper_spec'

describe Teacher do
  before :each do
    @teacher = Teacher.new(50, 'Biological', 'Frea', parent_permission: true)
  end
  context 'given three arguments' do
    it 'is an object of Teacher ' do
      expect(@teacher).to be_an_instance_of(Teacher)
    end

    it 'has the given data ' do
      expect(@teacher).to have_attributes(name: 'Frea', age: 50, specialization: 'Biological')
    end

    it 'has an id ' do
      expect(@teacher.id).to be_an_instance_of(Integer)
    end

    it 'is a descendant of Person' do
      expect(@teacher).to be_a_kind_of(Person)
    end
  end
end
