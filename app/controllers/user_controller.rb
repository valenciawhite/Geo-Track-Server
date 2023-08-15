class UserController < ApplicationController
   
    def create 
        @user = User.create(user_params)

        if @user.save
            flash[:notice] = 'Account was successfully created.'
            # redirect_to users_path
        else
            flash.now[:alert] = 'Account creation failed. Try again.'
            # render :new
        end
    end 

    def index 
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)

        if @user.update(user_params)
            flash[:notice] = "Account was successfully updated."
            # redirect_to users_path(@user)
        else
            flash.now[:alert] = "Account update failed. Try again."
            # render :edit
        end
    end 

    def destroy 
        @user = User.find(params[:id])
        User.destroy 
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end
end
