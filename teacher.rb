require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, **defaults)
    defaults[:name] ||= 'Unknown'
    defaults[:parent_permission] = true if defaults[:parent_permission].nil?

    super(age, **defaults)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
