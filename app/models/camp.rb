class Camp < ApplicationRecord
  has_many   :users, through: :rates
  has_many   :users, through: :postcomments
  has_many   :rates
  has_many   :postcomments
  has_many   :nearStore
  has_many   :image

  validates :campName, :address, presence: true

end
