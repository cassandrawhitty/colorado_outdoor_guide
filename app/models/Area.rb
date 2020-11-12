class Area < ActiveRecord::Base
    belongs_to :sport


    
    def self.all_areas_by_sport(sport)
        all.map do |area|
            if area.sport_id == Sports.all.id
                all.pluck(:area_name)
            end
        end
    end


    # def self.all_areas_by_sport(sport)
    #     all.select do |area|
    #         if area.sport_id == Sport.ids
    #             all.pluck(:area_name)
    #         else 
    #             nil
    #         end
    #     end
    # end

end

