class Sport < ActiveRecord::Base
    belongs_to :users
    has_many :areas
    
    def self.all_sports_by_name
        all.pluck(:name)
    end
end