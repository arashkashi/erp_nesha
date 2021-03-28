class AddProductionRawStoresToRawMaterialToProductionInputs < ActiveRecord::Migration[6.1]
  def change
    add_reference :raw_material_to_production_inputs, :production_raw_store, null: false, foreign_key: true, type: :uuid, index: { name: 'production_raw_store_index'}
  end
end
