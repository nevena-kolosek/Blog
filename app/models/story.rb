class Story < ApplicationRecord
  belongs_to :user, required: false
  has_many :tags

  def author
  	user = User.find(author_id)
  end

	def self.search(search)
	  if search
	    Story.where("title LIKE ?", "%#{search}%")
	  else
	    Story.all
	  end
	end
end
