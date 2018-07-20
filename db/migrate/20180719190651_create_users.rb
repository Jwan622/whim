class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.date :dob
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :sex

      t.timestamps
    end
  end
end
