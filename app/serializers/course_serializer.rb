class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :students, :instructor
  
  def students
    object.students
  end

  def instructor
    object.instructor
  end
  
end
