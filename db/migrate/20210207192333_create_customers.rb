class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers, id: :uuid do |t|
      t.string :name
      t.string :phone
      t.json :meta
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
