class WasherOutputTypeValidator < ActiveModel::Validator
 	def validate(record)

 		if record.order_id == "" 
 			record.order_id = nil
 		end	 
  	end
end


class WasherOutput < ApplicationRecord
  belongs_to :washer_type
  belongs_to :order, :optional => true
  belongs_to :user

  validates_with WasherOutputTypeValidator

  validates :order_id, presence: false

  def self.sum_amount_by_washer_type(washer_type)
    WasherOutput.where(washer_type_id: washer_type.id).sum(:amount)
  end
end
