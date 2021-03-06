require 'yaml'

class PagesController < ApplicationController
  def new
    @page = Page.new
  end
  
  def create
    page = Page.create( page_params )
    lang = Language.find( helpers.session_language['id'] )

    if page.save
      lang.pages << page

      redirect_to root_path, notice: 'pathed saved'
    else
      redirect_back(fallback_location: root_path, notice: 'page not saved!')
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update(page_params)
      redirect_to root_path, notice: 'pathed edited'
    else
      redirect_back(fallback_location: root_path, notice: 'edit failed')
    end
  end

  def delete
    page = Page.find(params[:id])

    if page.destroy
      redirect_back(fallback_location: root_path, notice: 'pathed deleted')
    else
      redirect_to root_path
    end
  end

  def show_backup
  end

  private
    
  def page_params
    params.require(:page).permit(:name, :link, :content)
  end
end
