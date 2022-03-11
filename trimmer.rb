# frozen_string_literal: true

require './base_decorator'
# Trimmer blueprint to shorten string
class Trimmer < Decorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end
