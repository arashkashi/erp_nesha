class PipeStoreInput < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :user
  belongs_to :order_item, :optional => true

  validates :amount, presence: true

  def self.sum_amount_by_pipe_type(pipe_type)
    PipeStoreInput.where(pipe_type_id: pipe_type.id).sum(:amount)
  end
end
