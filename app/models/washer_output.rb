class WasherOutput < ApplicationRecord
  belongs_to :washer_type
  belongs_to :order
  belongs_to :user
end
