class WasherInput < ApplicationRecord
  belongs_to :washer_type
  belongs_to :user
end
