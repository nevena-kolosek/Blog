class Team < ApplicationRecord
	has_many :members
	has_many :uses, through: :members
end
