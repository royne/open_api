class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :course_id
end
