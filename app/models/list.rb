class List < ApplicationRecord
  has_many :items #Just adds methods
  validates :name, :presence => true

end
