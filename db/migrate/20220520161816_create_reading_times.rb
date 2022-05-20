class CreateReadingTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :reading_times do |t|
      t.float :qty_time
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
