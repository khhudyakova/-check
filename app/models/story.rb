class Story < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :author, presence: true

  has_one :description, required: false
  has_many :chapters
end
