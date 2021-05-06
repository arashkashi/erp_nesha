class PipeType < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true

  validates :size, numericality: { only_integer: true }

  validates :weight, presence: true
end
