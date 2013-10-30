class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def destroy
    Team.find(params[:id]).destroy
    flash[:success] = "Team deleted."
    redirect_to teams_url
  end

  def add_teamMember
    @team = Team.find_by_id(params[:team_id])
    @users = User2.all
  end

  def add_user
    @team = Team.find_by_id(params[:team_id])
    @user = User2.find_by_id(params[:user_id])
    if @team.user2s.include? @user
    else
      @team.user2s << @user
      flash[:success] = "Member successfully added."
    end
    redirect_to @team
  end

  def index
  	@teams = Team.all
  end

  def create
    @team = Team.new(user_params)
    if @team.save
      flash[:success] = "Successfully created #{@team.team_name}"
      redirect_to @team
    else
      render 'new'
    end
  end

  def current_team=(team)
    @current_team = team
  end

  def current_team
    @current_team    # Useless! Don't use this line.
  end

  private

    def user_params
      params.require(:team).permit(:team_name)
    end

end