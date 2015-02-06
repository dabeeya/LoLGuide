class ChampionsController < ApplicationController
  def index
    @champions = Champion.all
    # we wont need this tho
  end

  def show
    @champion = Champion.find(params[:id])
    @guides = @champion.guides
  end
end
