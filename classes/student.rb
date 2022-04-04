require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission, classroom = 'Unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
