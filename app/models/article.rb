class Article < ApplicationRecord

    def self.find_by_mission(mission)
        puts(mission)
        return Article.where(mission: mission)
    end

    def self.search_for(query)
        articles = []
        articles.concat(Article.where("abstract like ?", "%" + query + "%"))
        articles.concat(Article.where("name like ?", "%" + query + "%"))
        return articles
    end
    
end
