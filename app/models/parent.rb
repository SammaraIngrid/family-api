class Parent < ApplicationRecord
  belongs_to :mother, class_name: 'Grandparent'
  belongs_to :father, class_name: 'Grandparent'

  validates :name, :birthday, :surname, presence: true
end
