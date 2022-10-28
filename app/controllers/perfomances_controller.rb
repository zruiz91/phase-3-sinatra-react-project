class PerformancesController < ApplicationController
    get "/performances" do
        performances = Performance.all
        performances.to_json
    end

    get "/performances/:id" do
        performance = Performance.find(params[:id])
        performance.to_json
    end

    post "/performances" do
        performance = Performance.create(title: params[:title], streamer_id: params[:streamer_id], game_id: params[:game_id], streamer_name: params[:streamer_name])
        performance.to_json
    end

    patch "/performances/:id" do
        performance = Performance.find(params[:id])
        
        performance.update()
        performance.to_json
    end

    delete "/performances/:id" do
        performance = Performance.find(params[:id])
        performance.destroy
    end

end