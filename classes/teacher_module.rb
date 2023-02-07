require_relative 'teacher'
class TeacherModule
  attr_accessor :teachers

  def initialize
    @teachers = File.read(File.join('data', 'teachers.json')).empty? ? [] : JSON.parse(File.read(File.join('data', 'teachers.json')))
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, specialization, name)
    @teachers << teacher.to_json

    write_to_file
  end

  def to_s
    @teachers.each { |teacher| puts puts "[#{teacher['class']}] Age: #{teacher['age']} Name: #{teacher['name'] }" }
    puts
  end

  def write_to_file
    json_data = JSON.pretty_generate(@teachers)
    File.write(File.join('data', 'teachers.json'), json_data)
  end
end
