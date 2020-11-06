# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Delete all old articles to start with fresh DB
Article.delete_all


# fetch news ids as strings and log them into an array
news_ids = []
response = HTTParty.get('http://hubblesite.org/api/v3/news?page=all')
JSON.parse(response.body).each do |item|
    news_ids.push(item['news_id'])
end


# iterate through array of news ids and fetch each articles data then create new article object
news_ids.each do |news_id|
    response = HTTParty.get("http://hubblesite.org/api/v3/news_release/#{news_id}")
    article = JSON.parse(response.body)
    Article.create(
        name: article['name'],
        news_id: article['news_id'],
        url: article['url'],
        publication: article['publication'],
        mission: article['mission'],
        abstract: article['abstract'],
        credits: article['credits'],
        thumbnail: article['thumbnail'],
        thumbnail_retina: article['thumbnail_retina'],
        thumbnail_1x: article['thumbnail_1x'],
        thumbnail_2x: article['thumbnail_2x'],
        keystone_image_1x: article['keystone_image_1x'],
        keystone_image_2x: article['keystone_image_2x']
    )
end