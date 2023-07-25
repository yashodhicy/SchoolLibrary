require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, classroom, **defaults)
    defaults[:name] ||= 'Unknown'
    defaults[:parent_permission] = true if defaults[:parent_permission].nil?

    super(age, **defaults)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
