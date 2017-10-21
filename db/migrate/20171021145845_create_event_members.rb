class CreateEventMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_members do |t|
      t.integer :eventid
      t.integer :userid
      t.boolean :attended

      t.timestamps
    end
  end
end
