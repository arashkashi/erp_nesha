class CreateWasherOutputs < ActiveRecord::Migration[6.1]
  def change
    create_table :washer_outputs, id: :uuid do |t|
      t.references :washer_type, null: false, foreign_key: true, type: :uuid
      t.decimal :amount, precision: 8, scale: 2
      t.references :order, null: true, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
