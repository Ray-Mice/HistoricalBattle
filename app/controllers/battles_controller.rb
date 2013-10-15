class BattlesController < ApplicationController
  def new
    @battle = Battle.new
  end

  def show
    @battle = Battle.find(params[:id])
  end

  def create
    @battle = Battle.new(battle_params)
    if @battle.save
      redirect_to @battle
    else
      render 'new'
    end
  end

    private

    def battle_params
      params.require(:battle).permit(:name, :date, :location, :belligerent, :strength, :casualties, :result)
    end
end
