class List < ApplicationRecord
  has_many :items #Just adds methods
  validates :name, :presence => :name

end
