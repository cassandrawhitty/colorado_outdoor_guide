class Area < ActiveRecord::Base
    belongs_to :sport

    def self.all_areas_by_sport
        if all.sport_id = Sport
          all.pluck(:area_name)
        else 
          nil
        end
    end
end