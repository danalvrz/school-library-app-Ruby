require './person'
# Blueprint for a teacher object based on a person class
class Teacher < Person
  def initialize(*args, specialization)
    super(*args)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
