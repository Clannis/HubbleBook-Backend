class Article < ApplicationRecord

    def find_by_mission(mission)
        return Article.where(mission: mission)
    end
    
end
