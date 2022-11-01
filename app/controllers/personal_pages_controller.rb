class PersonalPagesController < ApplicationController
    
  before_action :authenticate_player!, except: []
  def show
    @player = Player.find(params[:player_id])
    @personal_pages = @player.personal_pages
    render :show
    
  end



  def edit
    @player = Player.find(params[:player_id])
    @personal_pages = @player.personal_pages
    render :edit
  end

  def update
     @player = Player.find(params[:player_id])
     @personal_pages = @player.personal_pages
     if @personal_pages.update(params.require(:player).permit(:house_image))
    # if @personal_page.update(params.require(:player).permit(:house_image))
      flash[:success] = "House Image successfully updated!"

      redirect_to personal_page_url(@personal_page)
    else
      flash.now[:error] = "To-do item update failed"

      render :edit
    end
  end
end
