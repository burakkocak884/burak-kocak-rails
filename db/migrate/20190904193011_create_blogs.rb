class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :username
      t.string :headline
      t.string :content
      t.string :date

      t.timestamps
    end
  end
end
