class PerformancesController < ApplicationController
    get "/performances" do
        Performances = Performance.all
        Performances.to_json
    end

    get "/performances/:id" do
        Performance = Performance.find(params[:id])
        Performance.to_json
    end

    post "/performances" do
        Performance = Performance.create(params)
        Performance.to_json
    end

    patch "/performances/:id" do
        Performance = Performance.find(params[:id])
        
        # need to finish update
        Performance.update()
        Performances.to_json
    end

    delete "/performances/:id" do
        Performance = Performance.find(params[:id])
        Performance.destroy
    end

end