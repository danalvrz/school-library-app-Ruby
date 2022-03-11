# frozen_string_literal: true

require './decorator'
require './rental'

# Blueprint for a person object
class Person
  include Decorator

  def initialize(age, name = 'Unknown', parent_permission = true)
    super()
    @id = rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_reader :id
  attr_accessor :name, :age, :rentals, :parent_permission

  def can_use_services?
    return true if of_age? || @parent_permission == true

    false
  end

  def correct_name
    decorated_name(@name)
  end

  def add_rental(date, book)
    @rentals << Rental.new(book, self, date)
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end
end
