class FavoritesController < ApplicationController
    
    def new
        @bands = Band.all
        @band = Band.new
    end

    def create
        Favorite.create(user: current_user, band_id: params[:band_id])
        redirect_to bands_path
    end

    def delete
        current_user.favorites.find_by_band_id(params[:id]).destroy
        redirect_to bands_path
    end

    # def delete
    #     @band = Band.find(params[:id]).destroy
    #     p "*" *100
    #     p params 
    #     p "*" *100
    #     # redirect_to :action => 'band'
    #     redirect_to band_favorites_url
    # end
end