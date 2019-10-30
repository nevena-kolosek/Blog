class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories

  enum role: [ :admin, :editor, :author ]

  def self.admin
  	users = User.all
  	if users.count == 0
      puts 'Count je nula'
      #dodati
 	  end	
  end

end
