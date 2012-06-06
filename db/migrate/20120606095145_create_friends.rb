class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :cell
      t.string :email
      t.date :DOB
      t.string :AboutME

      t.timestamps
    end
  end
end
