class List < ApplicationRecord
  has_many :items #Just adds methods
  validates :presence => :name
  
end
