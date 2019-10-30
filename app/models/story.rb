class Story < ApplicationRecord
  belongs_to :user, required: false
  has_many :tags

  def author
  	user = User.find(author_id)
  end
end
