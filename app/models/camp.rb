class Camp < ApplicationRecord
  has_many   :users, through: :rates
  has_many   :users, through: :postcomments
  has_many   :rates
  has_many   :postcomments
  has_one    :nearStore
  has_one    :nearStore
  has_one    :image

  validates :campName, :address, presence: true

end
