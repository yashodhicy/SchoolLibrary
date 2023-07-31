require './classes/student'
def create_student(people)
  print 'Age: '
  age = gets.chomp.to_i
  print 'Name: '
  name = gets.chomp
  print 'Has parent permission? [Y/N]: '
  permission = gets.chomp.upcase

  case permission
  when 'N'
    student = Student.new(age, 'classroom', name: name, parent_permission: false)
    people << student
  when 'Y'
    student = Student.new(age, 'classroom', name: name, parent_permission: true)
    people << student
  end
  puts 'Student created successfully'
end
