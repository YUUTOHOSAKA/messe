class Messege < ActiveRecord::Base
  validates :name, length: {maximum: 20}

  validates :body, length: {minimum: 2, maximum: 20}
  validates :age, :numericality => {:only_integer => true}
  validates :age, length: {minimum: 1, maximum: 3}
end