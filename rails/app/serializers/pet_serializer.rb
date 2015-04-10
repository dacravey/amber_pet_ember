class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :age, :breed, :user_id, :chip_number, :description
end
