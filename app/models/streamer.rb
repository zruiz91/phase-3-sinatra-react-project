class Streamer < ActiveRecord::Base
   has_many :performances
   has_many :games, through: :performances

def view_performance
    Performance.create(game: game, streamer: self, performance: performance)
end

def view_game
    Game.create(game: game, streamer: self, performance: performance)
end

def self.most_performances
    self.all.max_by {|streamer| streamer.performances.count}
end


end