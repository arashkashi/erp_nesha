class CreateWasherInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :washer_inputs, id: :uuid do |t|
      t.references :washer_type, null: false, foreign_key: true, type: :uuid
      t.decimal :amount, precision: 8, scale: 2
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
