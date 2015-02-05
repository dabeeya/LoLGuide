class ChampionsController < ApplicationController
  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find(params[:id])
    @guides = @champion.guides
    @guide = Guide.find(params[:id])
  end
end
