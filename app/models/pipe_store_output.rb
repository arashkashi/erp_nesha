class PipeStoreOutTypeValidator < ActiveModel::Validator
 	def validate(record)

 		if record.order_item_id && (record.order_item_id != "")
 			pipe_type = PipeType.find(record.pipe_type_id)
 			order_item = OrderItem.find(record.order_item_id)
 		    if (pipe_type.name != order_item.pipe_type.name)
 				record.errors.add :pipe_type, "Mismatch"
 			end
 		elsif record.order_item_id == "" 
 			record.order_item_id = nil
 		end
 		 	 
  	end
end


class PipeStoreOutput < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :user
  belongs_to :order_item, :optional => true


  validates_with PipeStoreOutTypeValidator
  validates :order_item_id, presence: false

  def self.sum_pipe_out_by_order_item_id(order_item_id)
  	PipeStoreOutput.where(order_item_id: order_item_id).sum(:amount)
  end
end
