require_relative './person'

class Teacher < Person
  def initialize(age, name, specializaton)
    super(age, name)
    @specializaton = specializaton
  end

  def can_use_services?
    true
  end
end
