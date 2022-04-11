require_relative '../classes/person'

describe Person do
  context 'Test for the Person class' do
    age = 14
    name = 'Orogoro'
    person = Person.new(age, name, parent_permission: false)
    it 'if it is right class name' do
      expect(person.class.name) == Person
    end

    it 'if it has right name, age and permission' do
      expect(person.age).to eq 14
      expect(person.name).to eq 'Orogoro'
    end
    it 'if person can rent a book' do
      expect(person.can_use_services?).to eq(false)
    end
  end
end
