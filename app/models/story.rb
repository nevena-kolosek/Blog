class Story < ApplicationRecord
  belongs_to :user, required: false
end
