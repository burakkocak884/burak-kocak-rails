class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment
      t.integer :blog_id
      t.string :date

      t.timestamps
    end
  end
end
