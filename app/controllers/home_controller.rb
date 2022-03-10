class HomeController < ApplicationController
  before_action :default_language, if: -> { session[:current_language].nil? }
  
  def index
  end

  private

  def default_language
    session[:current_language] = Language.find_by(name: 'Ruby')

    redirect_to root_path
  end
end
