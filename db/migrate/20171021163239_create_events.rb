class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :eventid
      t.integer :clubid
      t.string :title
      t.string :location
      t.text :description
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
