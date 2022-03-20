class HomeController < ApplicationController
  before_action :default_language, if: -> { session[:current_language].nil? }
  
  def index
    @selected = Page.find_by(name: params[:selected].squish) if params[:selected].present?

    curr_lang = Language.find_by(name: helpers.current_language)
    
    @pages = Page.where(language_id: curr_lang.id)
  end

  private

  def default_language
    session[:current_language] = Language.find_by(name: 'Ruby')

    redirect_to root_path
  end
end
