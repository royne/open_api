class AddBookToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :book_id, :integer
    add_column :books, :course_id, :integer
  end
end
