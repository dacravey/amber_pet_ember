class Pet < ActiveRecord::Base

  validates :name, :presence => true
  validates :breed, :presence => true

  # validates :user_id, :presence => true
  validates :chip_number, :presence => true
  validates :description, :presence => true

  belongs_to :user
  belongs_to :specie
  has_many :losts
  has_many :findings
end

#JOEJFWEOFJWEOFJSDLFNSD
