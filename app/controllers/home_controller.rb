class HomeController < ApplicationController
  before_action :default_language, if: -> { helpers.no_language_set }
  
  def index
    @selected = Page.find_by( name: params[:selected].squish ) if params[:selected].present?

    @pages = Page.where( language_id: helpers.session_language['id'] )
  end

  private

  def default_language
    session[:current_language] = Language.find_by(name: 'General Programming')
  end
end
