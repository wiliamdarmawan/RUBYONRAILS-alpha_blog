class Category < ApplicationRecord
  has_many :article_category
  has_many :articles, through: :article_category
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates_uniqueness_of :name
end