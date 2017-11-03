class CreateClubMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :club_members do |t|
      t.integer :ClubId
      t.integer :UserId
      t.boolean :IsAdmin

      t.timestamps
    end
  end
end
