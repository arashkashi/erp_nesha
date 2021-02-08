class OrderItem < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :order
end
