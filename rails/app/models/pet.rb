class Pet < ActiveRecord::Base
  validates :name, :presence => true
  validates :age, :presence => true
  validates :breed, :presence => true
  # validates :user_id, :presence => true
  validates :chip_number, :presence => true
  validates :description, :presence => true
  belongs_to :user
  belongs_to :specie
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end

#JOEJFWEOFJWEOFJSDLFNSD
