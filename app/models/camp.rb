class Camp < ApplicationRecord
  has_many   :users, through: :rates
  has_many   :users, through: :postcomments
  has_many   :rates
  has_many   :postcomments
  has_many   :nearStores
  has_many   :images

  accepts_nested_attributes_for :images
  accepts_nested_attributes_for :nearStores
  validates :campName, :address, presence: true

end
