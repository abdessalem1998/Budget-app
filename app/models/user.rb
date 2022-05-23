class User < ApplicationRecord
  has_many :spendings, foreign_key: 'author_id', dependent: :destroy
  has_many :types, dependent: :destroy
  validates :name, presence: true, length: { maximum: 250 }
end
