# frozen_string_literal: true

require './person'

# Blueprint for a student object based on a person class
class Student < Person
  def initialize(*args, classroom)
    super(*args)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
