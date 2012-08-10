class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :ip_address
      t.string :verification

      t.timestamps
    end
  end
end
