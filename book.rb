require './rental'

# Book object template
class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author, :rentals

  def add_rental(date, person)
    @rentals << Rental.new(self, person, date)
  end
end
