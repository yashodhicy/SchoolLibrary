require './classes/teacher'
def create_teacher(people)
  print 'Enter name of teacher: '
  name = gets.chomp
  print 'Enter age: '
  age = gets.chomp.to_i
  print 'Enter Specialization: '
  specialization = gets.chomp
  teacher = Teacher.new(specialization, age, name: name)
  people << teacher
  puts 'Teacher created successfully'
end
