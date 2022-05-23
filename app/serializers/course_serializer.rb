class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :students, :instructor, :book
  
  def students
    object.students
  end

  def instructor
    object.instructor
  end
  
  def book
    object.book
  end
  
end
