class AddOrderItemToPipeStoreOutputs < ActiveRecord::Migration[6.1]
  def change
    add_reference :pipe_store_outputs, :order_item, null: true, foreign_key: true, type: :uuid
  end
end
