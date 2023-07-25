class Person
  attr_reader :parent_permission
  attr_accessor :name, :age

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = rand(1000..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end
end
