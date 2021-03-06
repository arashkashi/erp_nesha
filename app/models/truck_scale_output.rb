class TruckScaleOutputValidator < ActiveModel::Validator
 	def validate(record)

 		if record.order_id == "" 
 			record.order_id = nil
 		end	 
  	end
end

class TruckScaleOutput < ApplicationRecord
  belongs_to :order, :optional => true
  belongs_to :user

  validates_with TruckScaleOutputValidator

  validates :order_id, presence: false

end
