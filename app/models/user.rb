class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :stories

  has_many :members
  has_many :teams, through: :members

  mount_uploader :avatar, AvatarUploader

  enum role: [ :author, :admin, :editor ]

  def self.generate_slug(user)
    split = user.full_name.split(" ")
    first_name = split[0]
    last_name = split[1]
    x = first_name + "-" + last_name.slice!(0, 1)
    user.update(slug: x)
  end

  after_create :set_admin

  private

    def set_admin
      users = User.all
      if users.count == 1
        self.admin!
        user.update
      end
    end

end
