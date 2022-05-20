namespace :populating do
  task run: :environment do
    puts "init populating db"
    number_course = Course.count
  
    course = Course.create(name: "curso #{number_course + 1}") 
    puts "create course"

    book = Book.create(name: Faker::Book.title, content: Faker::Books::Lovecraft.paragraph) 
    puts "create book"
    
    instructor = User.new(name: Faker::Name.unique.name, password:"password")
    instructor.email = Faker::Internet.email(name: instructor.name)
    instructor.add_role(:instructor)
    instructor.course = course
    instructor.save!
    puts "create instructor"
    
    15.times do |i|
      student = User.new(name: Faker::Name.unique.name, password:"password")
      student.email = Faker::Internet.email(name: student.name)
      student.add_role(:student)
      student.course = course
      student.save!
      student.reading_times.create(qty_time: Random.new.rand(1..60), book_id: book.id)
      
      puts "create student #{i + 1}"
    end


  end
end