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
end
