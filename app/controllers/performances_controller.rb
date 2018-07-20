class PerformancesController < ApplicationController
    before_action :authorize, [:create, :destroy, :edit, :update]    
    def create
        @performance = Performance.new(performance_params)
        @performance.band_id = params[:band_id]
        @performance.user = current_user
        if @performance.save
            redirect_to band_path(params[:band_id])
        else
            redirect_to band_path(params[:band_id])
        end
    end

    def destroy
        perf = Performance.find(params[:id])
        band = perf.band
        perf.destroy
        redirect_to band_path(band)
    end
    
    def edit
        @performance = Performance.find(params[:id])
    end
    
    def update
        @performance = Performance.find(params[:id])
        @performance.update_attributes(performance_params)  
        redirect_to band_path(@performance.band)    
    end

    private

    def performance_params 
        params.require(:performance).permit(:showtime, :venue)
    end

   
end
