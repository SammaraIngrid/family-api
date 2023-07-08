class Parent < ApplicationRecord
  belongs_to :family
  validates :name, presence: true
  validates :birthday, presence: true
  validates :surname, presence: true
end
