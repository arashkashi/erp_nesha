class PipeStoreOutput < ApplicationRecord
  belongs_to :pipe_type
  belongs_to :user
end
