require_relative './person'

class Teacher < Person
  def initialize(age, name, specialization)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_json(_arg = {})
    {
      'person' => self.class.name,
      'id' => @id,
      'age' => @age,
      'name' => @name,
      'specialization' => @specialization
    }
  end
end
