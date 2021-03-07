class WasherInput < ApplicationRecord
  belongs_to :washer_type
  belongs_to :user

  def self.sum_amount_by_washer_type(washer_type)
    WasherInput.where(washer_type_id: washer_type.id).sum(:amount)
  end
end
