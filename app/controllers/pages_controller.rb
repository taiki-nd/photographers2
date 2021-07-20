class PagesController < ApplicationController
  
  def company
    @camera_maker = Slectbox.find_by(name_cam: 'sony')
  end

  def contact
  end

  def notice
    @page = Page.new
    @pages = Page.includes(:user).page(params[:page]).per(9).order('created_at DESC')
  end
  
  def report
  end
  
  def create
    page = Page.create(page_params)
    redirect_to "/pages/notice"
  end
  
  def destroy
    page = Page.find(params[:id])
    page.destroy
    redirect_to "/pages/notice"
  end
  
  private
    def page_params
        params.require(:page).permit(:twitter, :Date).merge(user_id: current_user.id)
    end
   
end
