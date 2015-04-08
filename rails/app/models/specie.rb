class Specie <ActiveRecord::Base
  validates :specie, :presence => true
  has_many :pets
end
