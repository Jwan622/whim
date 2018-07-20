class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.boolean :byob
      t.boolean :byof
      t.references :hangout, foreign_key: true
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
