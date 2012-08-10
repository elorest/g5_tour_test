class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.integer :user_id
      t.date :preferred_date
      t.string :additional_questions
      t.text :options
      t.integer :rating

      t.timestamps
    end
  end
end
