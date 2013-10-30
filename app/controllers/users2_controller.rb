class Users2Controller < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
    @users = User2.all
  end

  def destroy
    User2.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to user2s_url
  end

  def show
    @user2 = User2.find(params[:id])
    @microposts = @user2.microposts.paginate(page: params[:page])
    @teams = @user2.teams
  end

  def new
  	@user2 = User2.new
  end

  def edit
  end

  def update
    if @user2.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user2
    else
      render 'edit'
    end
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

     # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user2 = User2.find(params[:id])
      redirect_to(root_url) unless current_user?(@user2)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
end
