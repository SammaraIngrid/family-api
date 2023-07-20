class Grandparent < ApplicationRecord
  belongs_to :family

  validates :name, :birthday, :surname, presence: true
end
