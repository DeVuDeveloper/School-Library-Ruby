require_relative '../classes/classroom'

describe Classroom do
  context 'Test for Classroom class' do
    classroom = Classroom.new('Informatic')

    it 'if there is right label' do
      expect(classroom.label) == 'Informatic'
    end

    it 'if there is no students' do
      expect(classroom.students.size) == 0
    end
  end
end
