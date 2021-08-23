class PagesController < ApplicationController
  def index
    pages = Page.all
    
    render component: "Pages", props: {pages:pages}
  end

  def show
    # I want to find the page
    page = Page.find(params[:id])
    render json: page
  end

  def new
    render component: "NewPage"
  end

  def create
    # note we are not using create
    page = Page.new(page_params)
    if page.save
      # what should we do here?
      # get '/pages'
      redirect_to pages_path
    else
      #TODO handle invalid input...Later
      # render :
    end
  end
  
  private
  
  def page_params
    params.require(:page).permit(:title, :author,:body)
  end

  def modelname_params
    params.require(:modelname).permit(:attrindb)
  end
end



