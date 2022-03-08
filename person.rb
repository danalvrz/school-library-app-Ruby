# Blueprint for a person object
class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    return true if is_of_age? || @parent_permission == true

    false
  end

  private

  def is_of_age?
    return true if @age >= 18

    false
  end
end
