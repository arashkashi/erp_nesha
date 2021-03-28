class Driver < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :phone, presence: true

  validates :license, presence: true
end
