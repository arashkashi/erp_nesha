class RawMaterialInput < ApplicationRecord
  belongs_to :raw_material_type
  belongs_to :user

  def self.sum_amount_by_raw_type(raw_type)
    RawMaterialInput.where(raw_material_type_id: raw_type.id).sum(:amount)
  end
end
