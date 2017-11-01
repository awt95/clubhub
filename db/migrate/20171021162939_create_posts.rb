class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :clubid
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
