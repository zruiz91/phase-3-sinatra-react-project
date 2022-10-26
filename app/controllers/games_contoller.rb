class GamesController < ApplicationController
    get "/games" do
        games = Game.all
        games.to_json
    end

    get "/games/:id" do
        game = Game.find(params[:id])
        game.to_json
    end

    post "/games" do
        game = Game.create(params)
        game.to_json
    end

    patch "/games/:id" do
        game = Game.find(params[:id])
        # need to finish update
        game.update()
        games.to_json
    end

    delete "/games/:id" do
        game = Game.find(params[:id])
        game.destroy
    end

end