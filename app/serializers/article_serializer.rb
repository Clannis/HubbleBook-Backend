class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :name, :news_id, :url, :publication, :mission, :abstract, :thumbnail, :keystone_image_2x
end
