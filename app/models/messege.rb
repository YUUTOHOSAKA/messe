class Messege < ActiveRecord::Base
  validates :name, length: {maximum: 20}

  validates :body, length: {minimum: 2, maximum: 20}
end