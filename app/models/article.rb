class Article < ApplicationRecord

    def self.find_by_mission(mission)
        puts(mission)
        return Article.where(mission: mission)
    end
    
end
