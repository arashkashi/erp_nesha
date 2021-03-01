class RawMaterialInput < ApplicationRecord
  belongs_to :raw_material_type
  belongs_to :user
end
