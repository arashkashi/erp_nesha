class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :name
      t.references :customer, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.json :meta

      t.timestamps
    end
    add_index :orders, :name, unique: true
  end
end
