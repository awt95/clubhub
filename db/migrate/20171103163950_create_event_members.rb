class CreateEventMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_members do |t|
      t.integer :EventId
      t.integer :UserId
      t.boolean :Attended

      t.timestamps
    end
  end
end
