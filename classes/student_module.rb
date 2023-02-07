require_relative 'student'
require 'json'

class StudentModule
  attr_accessor :students

  def initialize
    @students = File.read(File.join('data', 'students.json')).empty? ? [] : JSON.parse(File.read(File.join('data', 'students.json')))
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
    student = Student.new(age, nil, name, parent_permission: parent_permission)
    @students << student.to_json
    write_to_file
  end

  def to_s
    @students.each { |student| puts "[#{student['class']}] Age: #{student['age']} Name: #{student['name']}" }
    puts
  end

  def write_to_file
    json_data = JSON.pretty_generate(@students)
    File.write(File.join('data', 'students.json'), json_data)
  end
end
