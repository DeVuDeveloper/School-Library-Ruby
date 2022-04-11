class CreateListPersones
  attr_accessor :persones

  def initialize
    file = File.open('persones.json', 'a+')
    @persones = file.size.zero? ? [] : JSON.parse(file.read)
    file.close
  end

  def create_person
    print 'To create a student, press 1, to create a teacher, press 2 : '

    option = gets.chomp
    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid input. Try again'
    end
  end

  def create_student
    file = File.open('persones.json', 'w')
    puts 'Create a new student'
    print 'Enter student age: '
    age = gets.chomp.to_i
    print 'Enter name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase
    case parent_permission
    when 'y'

      student = Student.new(age, name, true)
      puts 'Student created successfully'
      student = student.to_json
      @persones << student
      file.write(JSON[@persones])
      file.close
    when 'n'
      Student.new(age, name, false)
      puts 'Student is underage and dont have parent permission. Cant rent a book'
    end
  end

  def create_teacher
    file = File.open('persones.json', 'w')
    puts 'Create a new teacher'
    print 'Enter teacher age: '
    age = gets.chomp.to_i
    print 'Enter teacher name: '
    name = gets.chomp.to_s
    print 'Enter teacher specialization: '
    specialization = gets.chomp.to_s
    teacher = Teacher.new(age, name, specialization)
    teacher = teacher.to_json
    @persones << teacher
    file.write(JSON[@persones])
    file.close
    puts 'Teacher created successfully'
  end

  def list_all_persones
    file = File.open('books.json', 'r')
    puts 'Database is empty! Add a person.' if @persones.empty?
    @persones.each do |person|
      puts "[#{person['person']}] Name: #{person['name']
                                        }, Age: #{person['age']
                                                }, ID: #{person['id']}"
    end
    file.close
  end
end
