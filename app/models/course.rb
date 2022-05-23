class Course < ApplicationRecord
  has_many :users
  belongs_to :book, optional: true

  def students
    self.users.includes(:reading_times).students.map { |x| {id: x.id, name: x.name, email: x.email, reading_time: x.reading_times.sum(:qty_time), course_id: x.course_id }}
  end

  def instructor
    self.users.instructors.first
  end

end
