class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories

  mount_uploader :avatar, AvatarUploader

  enum role: [ :admin, :editor, :author ]

  def self.a
  	users = User.all

  	if users.count == 3
      @cutrrent_user.role
      puts 'kaunt je nula, da li je postao admin?'
      #puts @cutrrent_user.admin?
      #dodati
    else
      puts 'nije'
 	  end	
  end


  def self.generate_slug(user)
      split = user.full_name.split(" ")
      fname = split[0]
      lname = split[1]
      x = fname + "-" + lname.slice!(0, 1)
      puts x
      user.update(slug: x)
    end

  after_update :g

  private

    def g
    end

end
