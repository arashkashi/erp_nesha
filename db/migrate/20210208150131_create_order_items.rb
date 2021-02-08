class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items, id: :uuid do |t|
      t.references :pipe_type, null: false, foreign_key: true, type: :uuid
      t.decimal :amount, precision: 8, scale: 2
      t.references :order, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
