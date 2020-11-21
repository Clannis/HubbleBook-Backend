class Article < ApplicationRecord

    def self.find_by_mission(mission)
        puts(mission)
        return Article.where(mission: mission)
    end

    def self.search_for(query)
        articles = {}
        articles[:content] = Article.where("LOWER(abstract) like ?", "%" + query + "%").sort_by { |key| key[:publication]}.reverse
        articles[:title] = Article.where("LOWER(name) like ?", "%" + query + "%").sort_by { |key| key[:publication]}.reverse
        return articles
    end
    
end
