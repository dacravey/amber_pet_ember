class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :age, :breed, :user_id, :chip_number, :description
end
