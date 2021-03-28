class OrderItem < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :order

  validates :amount, presence: true

  def orderItemSignature
  	pipe_type = PipeType.find(self.pipe_type.id)
  	return pipe_type.name + '-' + self.order.name + '-' + self.order.customer.name + '-' + self.amount.to_s + "m"
  end
end
