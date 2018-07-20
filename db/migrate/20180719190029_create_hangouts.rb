class CreateHangouts < ActiveRecord::Migration[5.2]
  def change
    create_table :hangouts do |t|
      t.references :hangoutable, polymorphic: true

      t.timestamps
    end
  end
end
