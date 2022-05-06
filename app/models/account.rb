class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  has_one_attached :image
  has_one_attached :cover_image

  has_many :properts

  def full_name
    "#{first_name} #{last_name}"
  end

end
