class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :value
      t.integer :comment_id

      t.timestamps
    end
  end
end
