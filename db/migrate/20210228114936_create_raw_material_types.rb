class CreateRawMaterialTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :raw_material_types, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :raw_material_types, :name, unique: true
  end
end
