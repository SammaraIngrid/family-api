class Family < ApplicationRecord
  validates :name, presence: true

  has_many :users
  has_many :parents
end
