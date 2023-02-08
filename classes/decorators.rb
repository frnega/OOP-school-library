require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    super.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    super[0..9]
  end
end
