class User < ApplicationRecord
  belongs_to :mother, class_name: 'Parent'
  belongs_to :father, class_name: 'Parent'

  validates :name, :birthday, :surname, presence: true

  def age
    Date.current.year - self.birthday.year
  end
end
