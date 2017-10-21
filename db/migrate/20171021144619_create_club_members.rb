class CreateClubMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :club_members do |t|
      t.integer :id
      t.integer :clubid
      t.integer :userid
      t.boolean :isadmin

      t.timestamps
    end
  end
end
