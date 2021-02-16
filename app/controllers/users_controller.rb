class UsersController < ApplicationController
	
	def index
		@users = User.all
	end


	def new
		@user = User.new
	end

	def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "L'utilisateur a bien été créé"
    else
      flash[:danger] = 'Something went wrong - please check your input'
      render :new
    end
  end

	def show
	end

end
