class MessageSerializer < ActiveModel::Serializer
  attributes :id, :to, :from, :body
end
