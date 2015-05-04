class User < ActiveRecord::Base
  validates :email,    presence: true
  validates :name,     presence: true
  validates :password, presence: true
end