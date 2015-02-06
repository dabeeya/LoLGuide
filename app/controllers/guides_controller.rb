class GuidesController < ApplicationController
  def index
  end

  def show
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.find(params[:id])
  end

  def new
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.new
  end

  def create
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.new(guide_params)
    if @guide.save
      redirect_to champion_guide_path(@champion,@guide)
    else
      render "new"
    end
  end

  # def edit
  #   @category = Category.find(params[:category_id])
  #   @post = @category.posts.find(params[:id])
  # end

  # def update
  #   @category = Category.find(params[:id])
  #   @post = @category.posts.find(params[:id])
  #     # if @post.update_attributes(params[:post])

  #     # else
  #     #   render 'edit'
  #     # end
  # end

  # def destroy
  #   @category = Category.find(params[:id])
  #   @post = @category.posts.find(params[:id])
  #   @post.destroy
  #   redirect_to @project, :notice => "Task Deleted"
  # end

  private
  def guide_params
    params.require(:guide).permit(:title, :champion_advice, :item_build)
  end

end

