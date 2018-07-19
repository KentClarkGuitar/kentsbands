class BandsController < ApplicationController
    
    def index
        @bands = current_user.favorite_bands.order(:name)
    end

    def show
        @band = Band.find(params[:id])
        @performance = Performance.new
    end

    def create
        band = params[:band][:name]
        existingBand = Band.where("name ILIKE ?", band)
        if existingBand.count > 0
            redirect_to favorites_new_path
        else
            @band = Band.new(band_params)
            @band.user = current_user
            @band.save
            redirect_to favorites_new_path
        end
    end


    def delete
        @band = Band.find(params[:id]).destroy
        p "*" *100
        p params 
        p "*" *100
        # redirect_to :action => 'band'
        redirect_to band_favorites_url
    end
    private

    def band_params
        params.require(:band).permit(:name)
    end

end