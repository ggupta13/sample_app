class User2sController < ApplicationController
  def show
    @user2 = User2.find(params[:id])
  end

  def new
  	@user2 = User2.new
  end

  def create
    @user2 = User2.new(user_params)
    if @user2.save
      sign_in @user2
      flash[:success] = "Successfully created #{@user2.name}"
      redirect_to @user2
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user2).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  
end
