require './classes/utility/create_teacher'
require './classes/utility/create_student'

class CreatePerson
  def create_person(people)
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    input = gets.chomp

    case input
    when '1'
      create_student(people)
    when '2'
      create_teacher(people)
    end
  end
end
