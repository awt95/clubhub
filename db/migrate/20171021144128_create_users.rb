class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :userid
      t.string :surname
      t.string :forename
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
