class StreamersController < ApplicationController
    get "/streamers" do
        streamers = streamer.all
        streamers.to_json
    end

    get "/streamers/:id" do
        streamer = streamer.find(params[:id])
        streamer.to_json
    end

    post "/streamers" do
        streamer = streamer.create(params)
        streamer.to_json
    end

    patch "/streamers/:id" do
        streamer = streamer.find(params[:id])
        # need to finish update
        streamer.update()
        streamers.to_json
    end

    delete "/streamers/:id" do
        streamer = streamer.find(params[:id])
        streamer.destroy
    end

end