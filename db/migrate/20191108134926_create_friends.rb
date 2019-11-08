class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :user_email
      t.string :post_owner_email
      
      t.timestamps
    end
  end
end
