class Sport < ActiveRecord::Base
    belongs_to :users
    has_many :areas
end