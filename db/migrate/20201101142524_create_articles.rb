class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.string :news_id
      t.string :url
      t.string :publication
      t.string :mission
      t.string :abstract
      t.string :credits
      t.string :thumbnail
      t.string :thumbnail_retina
      t.string :thumbnail_1x
      t.string :thumbnail_2x
      t.string :keystone_image_1x
      t.string :keystone_image_2x

      t.timestamps
    end
  end
end
