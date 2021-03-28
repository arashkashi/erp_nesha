class CreateProductionRawStores < ActiveRecord::Migration[6.1]
  def change
    create_table :production_raw_stores, id: :uuid do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :production_raw_stores, :name, unique: true
  end
end
