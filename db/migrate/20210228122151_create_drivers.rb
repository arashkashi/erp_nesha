class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers, id: :uuid do |t|
      t.string :name
      t.string :phone
      t.string :truck
      t.string :license
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :drivers, :name, unique: true
    add_index :drivers, :phone, unique: true
    add_index :drivers, :license, unique: true
  end
end
