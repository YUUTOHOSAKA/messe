class Messege < ActiveRecord::Base
  validates :name, length: {maximum: 20}, presence: true

  validates :body, length: {minimum: 2, maximum: 20}, presence: true
  
  validates :age, length: {minimum: 1, maximum: 3}, presence: true
end