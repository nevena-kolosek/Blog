class Story < ApplicationRecord
  belongs_to :user, required: false
  has_many :tags

  def author
  	user = User.find(author_id)
  end

	def self.search(search)
	  if search
	  	puts search
	    Story.where("title LIKE ?", "%#{search}%")
	  else
	  	puts 'Sve'
	    Story.all
	  end
	end
end
