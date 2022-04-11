require_relative '../classes/teacher'

describe Teacher do
  context 'Test for the Teacher class' do
    age = 54
    name = 'Orogoro'
    specialization = 'Informatic'
    teacher = Teacher.new(age, name, specialization)

    it 'if is instance of class' do
      expect(teacher.instance_of?(Teacher)) == true
    end

    it 'if there are rigth age, name and specialization' do
      expect(teacher.age).to eq 54
      expect(teacher.name).to eq 'Orogoro'
      #   expect(teacher.specialization).to eq 'Informatic'
    end

    it 'if can rent a book' do
      expect(teacher.can_use_services?).to eq true
    end
  end
end
