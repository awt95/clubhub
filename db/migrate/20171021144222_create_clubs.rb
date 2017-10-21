class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.integer :clubid
      t.string :clubname
      t.text :description

      t.timestamps
    end
  end
end
