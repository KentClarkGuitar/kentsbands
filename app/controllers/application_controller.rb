class ApplicationController < ActionController::Base

    def authorize
        redirect_to login_path, unless current_user
    end 

    private 
    helper_method :current_user 
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
end
