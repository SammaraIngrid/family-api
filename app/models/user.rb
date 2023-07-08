class User < ApplicationRecord
  belongs_to :family
  validates :name, presence: true
  validates :birthday, presence: true
  validates :surname, presence: true

  def age
    Date.current.year - self.birthday.year
  end
end
