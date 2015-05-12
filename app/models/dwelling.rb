class Dwelling < ActiveRecord::Base
  validates :state, presence: true
end
