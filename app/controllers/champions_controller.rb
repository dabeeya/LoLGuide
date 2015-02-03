class ChampionsController < ApplicationController
  def index
    @champions = Champion.all
  end

  def show
    @champion = Champion.find(params[:id])
    @guides = @Guide.posts
  end
end
