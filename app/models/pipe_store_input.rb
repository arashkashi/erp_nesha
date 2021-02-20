class PipeStoreInput < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :user
  belongs_to :order_item
end
