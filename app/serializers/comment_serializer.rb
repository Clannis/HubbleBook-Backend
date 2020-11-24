class CommentSerializer < ActiveModel::Serializer
  attributes :content
  has_one :user
  has_one :article
end
