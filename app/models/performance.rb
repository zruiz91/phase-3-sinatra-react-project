class Performance < ActiveRecord::Base
    belongs_to :streamer
    belongs_to :game

    def perfomance_title
        "#{streamer} is playing #{game}!"
    end


    
end