class Camp < ApplicationRecord
  has_many   :users, through: :rates
  has_many   :users, through: :postcomments
  has_many   :rates
  has_many   :postcomments
  has_many   :nearStore
  has_many   :image

  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :nieaStore
  validates :campName, :address, presence: true

end
