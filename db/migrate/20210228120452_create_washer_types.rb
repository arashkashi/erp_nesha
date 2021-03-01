class CreateWasherTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :washer_types, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :washer_types, :name, unique: true
  end
end
