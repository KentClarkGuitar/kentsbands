class UsersController < ApplicationController
    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            flash[:notice] = "You have succesfully signed up"
            redirect_to bands_path
        else 
            flash[:notice]= "Please try again"
            redirect_back
        end
    end

    def show
        
    end

    def edit
        
    end

    def update

    end

    def destroy

    end

    private 
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end