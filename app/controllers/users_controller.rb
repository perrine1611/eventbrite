class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(current_user.id)
	end

	private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :description)
    end

end
