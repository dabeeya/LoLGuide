class GuidesController < ApplicationController
  def index
    #wont really need any info bc it would be weird to see all guides for all champions in a single page, too much
  end

  def show #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.find(params[:id])
  end

  def new #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.new
  end

  def edit #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.find(params[:id])
  end

  def create #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.new(guide_params)
    @guide.user_id = current_user[:id]
    if @guide.save
      redirect_to champion_guide_path(@champion,@guide)
    else
      render "new"
    end
  end


  def update #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.find(params[:id])
      if @guide.update(guide_params)
        redirect_to champion_guide_path(@champion,@guide)
      else
        render 'edit'
      end
  end

  def destroy #works
    @champion = Champion.find(params[:champion_id])
    @guide = @champion.guides.find(params[:id])
    @guide.destroy
    redirect_to champion_path(@champion)
  end

  private
  def guide_params
    params.require(:guide).permit(:title, :champion_advice, :item_build)
  end
end

