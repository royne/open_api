class Course < ApplicationRecord
  has_many :users

  def students
    self.users.students
  end

  def instructor
    self.users.instructors.first
  end

end
