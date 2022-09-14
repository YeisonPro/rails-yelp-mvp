class Restaurant < ApplicationRecord
  validates :name, :address, presence: :true
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: categories }
  has_many :reviews, dependent: :destroy
end
