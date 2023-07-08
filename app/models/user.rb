class User < ApplicationRecord
  belongs_to :family
  validates :birthday, presence: true

  def age
    Date.current.year - self.birthday.year
  end
end
