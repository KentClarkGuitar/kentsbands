class BandsController < ApplicationController
    
    def index
        @bands = current_user.favorite_bands
    end

end