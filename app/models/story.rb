class Story < ApplicationRecord
  belongs_to :user, required: false
  has_many :tags
end
