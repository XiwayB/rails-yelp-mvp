class Restaurant < ApplicationRecord
  CATEGORIES = %w(Chinese Italian Japanese French Belgian)
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
