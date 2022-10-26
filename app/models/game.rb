class Game < ActiveRecord::Base
    has_many :performance
    has_many :streamers, through: :performances


    
end