class PerformancesController < ApplicationController
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

    private

    def performance_params 
        params.require(:performance).permit(:showtime, :venue)
    end
end
