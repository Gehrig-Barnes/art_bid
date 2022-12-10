class ArtistsController < ApplicationController
    skip_before_action :authorize, :only => :create

    def create_artist
        artist = Artist.create!(artist_params)
        session[:artist_id] = user.id;
        render json: artist, status: :created
    end

    def get_artist
        artist = current_artist
        render json: artist, status: :ok
    end

    private
    def artist_params
        params.permit(:username, :password, :email, :about, :image)
    end
end
