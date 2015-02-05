class GuidesController < ApplicationController
  def index
  end

  def show
    @champion = Champion.find(params[:id])
    @guide = Guide.find(params[:id])
  end

  def new
  end

  def create
  end
end
