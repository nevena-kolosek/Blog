class Tag < ApplicationRecord
  belongs_to :story, required: false

  def self.count?
  	if Tag.count != 0
  	end
  end

  def self.story(sid)
  	story_id = sid
  end

end
