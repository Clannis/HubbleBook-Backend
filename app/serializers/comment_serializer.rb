class CommentSerializer < ActiveModel::Serializer
  attributes :content
  has_one :user
end
