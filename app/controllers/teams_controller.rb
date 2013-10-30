class TeamsController < ApplicationController

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
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
    end
  end

  private

    def user_params
      params.require(:team).permit(:team_name)
    end

end