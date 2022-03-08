require './decorator'

# Blueprint for a person object
class Person
  include Decorator
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = rand(1..1000)
    @age = age
    @name = correct_name(name)
    @parent_permission = parent_permission
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    return true if of_age? || @parent_permission == true

    false
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
