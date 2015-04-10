class LostSerializer < ActiveModel::Serializer
  attributes :id, :address, :date, :time, :pet_id
end
