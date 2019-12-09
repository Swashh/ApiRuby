class Type < ApplicationRecord
  belongs_to :model

  validates :title, presence: true
  validates :body, presence: true
end
