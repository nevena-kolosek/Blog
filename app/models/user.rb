class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories

  def self.admin
  	users = User.all
  	if users.count == 0
  	 	admin = true
  	else
  	 	admin = false
 	end	
  end
end
