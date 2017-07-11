class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def show
    @goals = Goal.all
  end

  def create
    @goal = Goal.create(goal_params)
    redirect_to root_path
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description)
  end

end
