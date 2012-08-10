class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :phone_number

      t.timestamps
    end
  end
end
