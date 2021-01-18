class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :usreName, presence: true, uniqueness: true

  has_many :camps, through: :rates
  has_many :camps, through: :postcomments
  has_many :postcomments
  has_many :rates

end
