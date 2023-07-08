class User < ApplicationRecord
  belongs_to :family

  def age
    Date.current.year - self.birthday.year
  end
end
