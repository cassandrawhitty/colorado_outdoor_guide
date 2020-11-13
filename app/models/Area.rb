class Area < ActiveRecord::Base

  belongs_to :sport
  
  def self.all_areas_by_sport sport_choice
    self.all.select do |area|
        area.sport_id == sport_choice.id
    end.pluck(:area_name)
  end

end