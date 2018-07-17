class FavoritesController < ApplicationController
    
    def new
        @bands = Band.all
    end

    def create
        Favorite.create(user: current_user, band_id: params[:band_id])
        redirect_to bands_path
    end

end