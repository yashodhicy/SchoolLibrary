require './decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    to_upper_case(@nameable.correct_name)
  end

  def to_upper_case(name)
    name.upcase
  end
end
