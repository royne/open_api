class AddReferencesUserToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :course_id, :integer
  end
end
