class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :content
end
