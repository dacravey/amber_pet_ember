class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :specie
  has_many :losts
  has_many :findings
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end

#JOEJFWEOFJWEOFJSDLFNSD
