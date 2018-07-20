class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :hangout, foreign_key: true
      t.references :user, foreign_key: true
      t.string :city
      t.string :state
      t.string :zip
      t.string :address

      t.timestamps
    end
  end
end
