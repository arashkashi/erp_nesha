class PipeStoreOutTypeValidator < ActiveModel::Validator
 	def validate(record)

 		pipe_type = PipeType.find(record.pipe_type_id)
 		# order_item = OrderItem.find(record.order_item_id)

 		record.errors.add :pipe_type, "#{record.to_json}#{pipe_type.name}"

 		if record.order_item_id
 			pipe_type = PipeType.find(record.pipe_type_id)
 			order_item = OrderItem.find(record.order_item_id)
 		    if (pipe_type.name != order_item.pipe_type.name)
 				record.errors.add :pipe_type, "Not valid type"
 			end
 		end
  	end
end


class PipeStoreOutput < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :user
  belongs_to :order_item


  validates_with PipeStoreOutTypeValidator
end
